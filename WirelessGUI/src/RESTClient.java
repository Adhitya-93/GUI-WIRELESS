import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import com.google.gson.Gson;
 
public class RESTClient {

	//TODO change URL to server IP Address 
    private static final String insertURL = "http://192.168.1.23:8080/OMTest/rest/insertcust";
    private static final String checkURL = "http://192.168.1.23:8080/OMTest/rest/profilepull/email";
    public void insert(String input) {
        try {
            URL insertUrl = new URL(insertURL);           
            HttpURLConnection httpConnection = (HttpURLConnection) insertUrl.openConnection();
            httpConnection.setDoOutput(true);
            httpConnection.setRequestMethod("POST");
            httpConnection.setRequestProperty("Content-Type", "application/json");                
            OutputStream outputStream = httpConnection.getOutputStream();
            outputStream.write(input.getBytes());
            outputStream.flush();
            
            if (httpConnection.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                    + httpConnection.getResponseCode());
            }

            BufferedReader responseBuffer = new BufferedReader(new InputStreamReader(
                    (httpConnection.getInputStream())));
            String output;
            System.out.println("Output from Server:\n");
            while ((output = responseBuffer.readLine()) != null) {
                System.out.println(output);
            }
            httpConnection.disconnect();
          } catch (MalformedURLException e) {
            e.printStackTrace();
          } catch (IOException e) {
            e.printStackTrace();
         }
        }
    
    public void check(String input){
    	
    	try {
    		 URL checkUrl = new URL(checkURL);
    		 HttpURLConnection httpConnection = (HttpURLConnection) checkUrl.openConnection();
             httpConnection.setDoOutput(true);
             httpConnection.setRequestMethod("POST");
             httpConnection.setRequestProperty("Content-Type", "application/json");                    
             OutputStream outputStream = httpConnection.getOutputStream();
             outputStream.write(input.getBytes());
             outputStream.flush();             
             if (httpConnection.getResponseCode() != 200) {
                 throw new RuntimeException("Failed : HTTP error code : "
                     + httpConnection.getResponseCode());
             }

             BufferedReader responseBuffer = new BufferedReader(new InputStreamReader(
                     (httpConnection.getInputStream())));
             String output;
             Gson gson = new Gson();            		 
             System.out.println("Output from Server:\n");
             while ((output = responseBuffer.readLine()) != null) {
                 System.out.println(output);
             }
             Customer cust = gson.fromJson(output, Customer.class);
             System.out.println(cust.toString());
             httpConnection.disconnect();
           } catch (MalformedURLException e) {
             e.printStackTrace();
           } catch (IOException e) {
             e.printStackTrace();
    	}    	 
    }
}