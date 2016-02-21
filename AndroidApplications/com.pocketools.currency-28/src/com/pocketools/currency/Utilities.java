package com.pocketools.currency;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;

public class Utilities {
    public static String searchForString(String searchString, String endString, StringBuffer theData) {
        String returnString = null;
        BufferedReader br = new BufferedReader(new StringReader(theData.toString()));
        while (true) {
            try {
                String singleLine = br.readLine();
                if (singleLine != null) {
                    int foundIndex = singleLine.indexOf(searchString);
                    if (foundIndex > -1) {
                        String tempString = singleLine.substring(searchString.length() + foundIndex);
                        if (tempString.indexOf(endString) != -1) {
                            returnString = tempString.substring(0, tempString.indexOf(endString));
                            if (returnString != null) {
                            }
                        }
                    }
                }
            } catch (IOException e) {
            }
            return returnString;
        }
    }
}