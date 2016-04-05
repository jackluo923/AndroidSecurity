package org.apache.cordova;

import android.media.ExifInterface;
import java.io.IOException;

public class ExifHelper
{
  private String aperture = null;
  private String datetime = null;
  private String exposureTime = null;
  private String flash = null;
  private String focalLength = null;
  private String gpsAltitude = null;
  private String gpsAltitudeRef = null;
  private String gpsDateStamp = null;
  private String gpsLatitude = null;
  private String gpsLatitudeRef = null;
  private String gpsLongitude = null;
  private String gpsLongitudeRef = null;
  private String gpsProcessingMethod = null;
  private String gpsTimestamp = null;
  private ExifInterface inFile = null;
  private String iso = null;
  private String make = null;
  private String model = null;
  private String orientation = null;
  private ExifInterface outFile = null;
  private String whiteBalance = null;
  
  public void createInFile(String paramString)
    throws IOException
  {
    inFile = new ExifInterface(paramString);
  }
  
  public void createOutFile(String paramString)
    throws IOException
  {
    outFile = new ExifInterface(paramString);
  }
  
  public int getOrientation()
  {
    int i = Integer.parseInt(orientation);
    if (i == 1) {}
    do
    {
      return 0;
      if (i == 6) {
        return 90;
      }
      if (i == 3) {
        return 180;
      }
    } while (i != 8);
    return 270;
  }
  
  public void readExifData()
  {
    aperture = inFile.getAttribute("FNumber");
    datetime = inFile.getAttribute("DateTime");
    exposureTime = inFile.getAttribute("ExposureTime");
    flash = inFile.getAttribute("Flash");
    focalLength = inFile.getAttribute("FocalLength");
    gpsAltitude = inFile.getAttribute("GPSAltitude");
    gpsAltitudeRef = inFile.getAttribute("GPSAltitudeRef");
    gpsDateStamp = inFile.getAttribute("GPSDateStamp");
    gpsLatitude = inFile.getAttribute("GPSLatitude");
    gpsLatitudeRef = inFile.getAttribute("GPSLatitudeRef");
    gpsLongitude = inFile.getAttribute("GPSLongitude");
    gpsLongitudeRef = inFile.getAttribute("GPSLongitudeRef");
    gpsProcessingMethod = inFile.getAttribute("GPSProcessingMethod");
    gpsTimestamp = inFile.getAttribute("GPSTimeStamp");
    iso = inFile.getAttribute("ISOSpeedRatings");
    make = inFile.getAttribute("Make");
    model = inFile.getAttribute("Model");
    orientation = inFile.getAttribute("Orientation");
    whiteBalance = inFile.getAttribute("WhiteBalance");
  }
  
  public void resetOrientation()
  {
    orientation = "1";
  }
  
  public void writeExifData()
    throws IOException
  {
    if (outFile == null) {
      return;
    }
    if (aperture != null) {
      outFile.setAttribute("FNumber", aperture);
    }
    if (datetime != null) {
      outFile.setAttribute("DateTime", datetime);
    }
    if (exposureTime != null) {
      outFile.setAttribute("ExposureTime", exposureTime);
    }
    if (flash != null) {
      outFile.setAttribute("Flash", flash);
    }
    if (focalLength != null) {
      outFile.setAttribute("FocalLength", focalLength);
    }
    if (gpsAltitude != null) {
      outFile.setAttribute("GPSAltitude", gpsAltitude);
    }
    if (gpsAltitudeRef != null) {
      outFile.setAttribute("GPSAltitudeRef", gpsAltitudeRef);
    }
    if (gpsDateStamp != null) {
      outFile.setAttribute("GPSDateStamp", gpsDateStamp);
    }
    if (gpsLatitude != null) {
      outFile.setAttribute("GPSLatitude", gpsLatitude);
    }
    if (gpsLatitudeRef != null) {
      outFile.setAttribute("GPSLatitudeRef", gpsLatitudeRef);
    }
    if (gpsLongitude != null) {
      outFile.setAttribute("GPSLongitude", gpsLongitude);
    }
    if (gpsLongitudeRef != null) {
      outFile.setAttribute("GPSLongitudeRef", gpsLongitudeRef);
    }
    if (gpsProcessingMethod != null) {
      outFile.setAttribute("GPSProcessingMethod", gpsProcessingMethod);
    }
    if (gpsTimestamp != null) {
      outFile.setAttribute("GPSTimeStamp", gpsTimestamp);
    }
    if (iso != null) {
      outFile.setAttribute("ISOSpeedRatings", iso);
    }
    if (make != null) {
      outFile.setAttribute("Make", make);
    }
    if (model != null) {
      outFile.setAttribute("Model", model);
    }
    if (orientation != null) {
      outFile.setAttribute("Orientation", orientation);
    }
    if (whiteBalance != null) {
      outFile.setAttribute("WhiteBalance", whiteBalance);
    }
    outFile.saveAttributes();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.ExifHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */