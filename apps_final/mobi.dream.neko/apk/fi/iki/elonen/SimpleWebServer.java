package fi.iki.elonen;

import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class SimpleWebServer
  extends NanoHTTPD
{
  private static final String LICENCE = "Copyright (c) 2012-2013 by Paul S. Hawke, 2001,2005-2013 by Jarno Elonen, 2010 by Konstantinos Togias\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.";
  private static final Map<String, String> MIME_TYPES = new HashMap() {};
  private final boolean quiet;
  private final File rootDir;
  
  public SimpleWebServer(String paramString, int paramInt, File paramFile, boolean paramBoolean)
  {
    super(paramString, paramInt);
    rootDir = paramFile;
    quiet = paramBoolean;
  }
  
  private String encodeUri(String paramString)
  {
    String str = "";
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "/ ", true);
    paramString = str;
    for (;;)
    {
      if (localStringTokenizer.hasMoreTokens())
      {
        str = localStringTokenizer.nextToken();
        if (str.equals("/"))
        {
          paramString = paramString + "/";
          continue;
        }
        if (str.equals(MonacaApplication.getStringFromResource(R.string.space)))
        {
          paramString = paramString + "%20";
          continue;
        }
      }
      try
      {
        str = paramString + URLEncoder.encode(str, "UTF-8");
        paramString = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
      return paramString;
    }
  }
  
  private String listDirectory(String paramString, File paramFile)
  {
    Object localObject1 = "Directory " + paramString;
    String str = "<html><head><title>" + (String)localObject1 + "</title><style><!--\n" + "span.dirname { font-weight: bold; }\n" + "span.filesize { font-size: 75%; }\n" + "// -->\n" + "</style>" + "</head><body><h1>" + (String)localObject1 + "</h1>";
    localObject1 = null;
    Object localObject2 = localObject1;
    int i;
    if (paramString.length() > 1)
    {
      localObject3 = paramString.substring(0, paramString.length() - 1);
      i = ((String)localObject3).lastIndexOf('/');
      localObject2 = localObject1;
      if (i >= 0)
      {
        localObject2 = localObject1;
        if (i < ((String)localObject3).length()) {
          localObject2 = paramString.substring(0, i + 1);
        }
      }
    }
    Object localObject3 = Arrays.asList(paramFile.list(new FilenameFilter()
    {
      public boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return new File(paramAnonymousFile, paramAnonymousString).isFile();
      }
    }));
    Collections.sort((List)localObject3);
    List localList = Arrays.asList(paramFile.list(new FilenameFilter()
    {
      public boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return new File(paramAnonymousFile, paramAnonymousString).isDirectory();
      }
    }));
    Collections.sort(localList);
    if (localObject2 == null)
    {
      localObject1 = str;
      if (localList.size() + ((List)localObject3).size() <= 0) {}
    }
    else
    {
      str = str + "<ul>";
      if (localObject2 == null)
      {
        localObject1 = str;
        if (localList.size() <= 0) {}
      }
      else
      {
        str = str + "<section class=\"directories\">";
        localObject1 = str;
        if (localObject2 != null) {
          localObject1 = str + "<li><a rel=\"directory\" href=\"" + (String)localObject2 + "\"><span class=\"dirname\">..</span></a></b></li>";
        }
        i = 0;
        while (i < localList.size())
        {
          localObject2 = (String)localList.get(i) + "/";
          localObject1 = (String)localObject1 + "<li><a rel=\"directory\" href=\"" + encodeUri(new StringBuilder().append(paramString).append((String)localObject2).toString()) + "\"><span class=\"dirname\">" + (String)localObject2 + "</span></a></b></li>";
          i += 1;
        }
        localObject1 = (String)localObject1 + "</section>";
      }
      localObject2 = localObject1;
      if (((List)localObject3).size() > 0)
      {
        localObject1 = (String)localObject1 + "<section class=\"files\">";
        i = 0;
        if (i < ((List)localObject3).size())
        {
          localObject2 = (String)((List)localObject3).get(i);
          localObject1 = (String)localObject1 + "<li><a href=\"" + encodeUri(new StringBuilder().append(paramString).append((String)localObject2).toString()) + "\"><span class=\"filename\">" + (String)localObject2 + "</span></a>";
          long l = new File(paramFile, (String)localObject2).length();
          localObject1 = (String)localObject1 + "&nbsp;<span class=\"filesize\">(";
          if (l < 1024L) {
            localObject1 = (String)localObject1 + l + " bytes";
          }
          for (;;)
          {
            localObject1 = (String)localObject1 + ")</span></li>";
            i += 1;
            break;
            if (l < 1048576L) {
              localObject1 = (String)localObject1 + l / 1024L + "." + l % 1024L / 10L % 100L + " KB";
            } else {
              localObject1 = (String)localObject1 + l / 1048576L + "." + l % 1048576L / 10L % 100L + " MB";
            }
          }
        }
        localObject2 = (String)localObject1 + "</section>";
      }
      localObject1 = (String)localObject2 + "</ul>";
    }
    return (String)localObject1 + "</body></html>";
  }
  
  File getRootDir()
  {
    return rootDir;
  }
  
  public NanoHTTPD.Response serve(String paramString, NanoHTTPD.Method paramMethod, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3)
  {
    if (!quiet)
    {
      System.out.println(paramMethod + " '" + paramString + "' ");
      paramMethod = paramMap1.keySet().iterator();
      String str;
      while (paramMethod.hasNext())
      {
        str = (String)paramMethod.next();
        System.out.println("  HDR: '" + str + "' = '" + (String)paramMap1.get(str) + "'");
      }
      paramMethod = paramMap2.keySet().iterator();
      while (paramMethod.hasNext())
      {
        str = (String)paramMethod.next();
        System.out.println("  PRM: '" + str + "' = '" + (String)paramMap2.get(str) + "'");
      }
      paramMethod = paramMap3.keySet().iterator();
      while (paramMethod.hasNext())
      {
        paramMap2 = (String)paramMethod.next();
        System.out.println("  UPLOADED: '" + paramMap2 + "' = '" + (String)paramMap3.get(paramMap2) + "'");
      }
    }
    return serveFile(paramString, paramMap1, getRootDir());
  }
  
  NanoHTTPD.Response serveFile(String paramString, Map<String, String> paramMap, File paramFile)
  {
    Object localObject1 = null;
    if (!paramFile.isDirectory()) {
      localObject1 = new NanoHTTPD.Response(NanoHTTPD.Response.Status.INTERNAL_ERROR, "text/plain", "INTERNAL ERRROR: serveFile(): given homeDir is not a directory.");
    }
    Object localObject2 = localObject1;
    String str = paramString;
    if (localObject1 == null)
    {
      str = paramString.trim().replace(File.separatorChar, '/');
      paramString = str;
      if (str.indexOf('?') >= 0) {
        paramString = str.substring(0, str.indexOf('?'));
      }
      if ((!paramString.startsWith("src/main")) && (!paramString.endsWith("src/main")))
      {
        localObject2 = localObject1;
        str = paramString;
        if (!paramString.contains("../")) {}
      }
      else
      {
        localObject2 = new NanoHTTPD.Response(NanoHTTPD.Response.Status.FORBIDDEN, "text/plain", "FORBIDDEN: Won't serve ../ for security reasons.");
        str = paramString;
      }
    }
    File localFile = new File(paramFile, str);
    paramString = (String)localObject2;
    if (localObject2 == null)
    {
      paramString = (String)localObject2;
      if (!localFile.exists()) {
        paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Error 404, file not found.");
      }
    }
    localObject1 = paramString;
    if (paramString == null)
    {
      localObject1 = paramString;
      if (localFile.isDirectory())
      {
        localObject2 = str;
        if (!str.endsWith("/"))
        {
          localObject2 = str + "/";
          paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.REDIRECT, "text/html", "<html><body>Redirected: <a href=\"" + (String)localObject2 + "\">" + (String)localObject2 + "</a></body></html>");
          paramString.addHeader("Location", (String)localObject2);
        }
        localObject1 = paramString;
        if (paramString == null) {
          if (new File(localFile, "index.html").exists())
          {
            paramFile = new File(paramFile, (String)localObject2 + "/index.html");
            if (paramString != null) {
              break label1133;
            }
            paramString = null;
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        i = paramFile.getCanonicalPath().lastIndexOf('.');
        if (i < 0) {
          break label1145;
        }
        paramString = (String)MIME_TYPES.get(paramFile.getCanonicalPath().substring(i + 1).toLowerCase());
      }
      catch (IOException paramString)
      {
        int i;
        long l3;
        long l1;
        continue;
      }
      localObject2 = Integer.toHexString((paramFile.getAbsolutePath() + paramFile.lastModified() + "" + paramFile.length()).hashCode());
      l3 = 0L;
      long l4 = -1L;
      localObject1 = (String)paramMap.get("range");
      final long l2 = l4;
      paramString = (String)localObject1;
      l1 = l3;
      if (localObject1 != null)
      {
        l2 = l4;
        paramString = (String)localObject1;
        l1 = l3;
        if (((String)localObject1).startsWith("bytes="))
        {
          localObject1 = ((String)localObject1).substring("bytes=".length());
          i = ((String)localObject1).indexOf('-');
          l2 = l4;
          paramString = (String)localObject1;
          l1 = l3;
          if (i > 0) {
            l1 = l3;
          }
        }
      }
      try
      {
        l2 = Long.parseLong(((String)localObject1).substring(0, i));
        l1 = l2;
        l3 = Long.parseLong(((String)localObject1).substring(i + 1));
        l1 = l2;
        paramString = (String)localObject1;
        l2 = l3;
      }
      catch (NumberFormatException paramString)
      {
        long l5;
        l2 = l4;
        paramString = (String)localObject1;
        continue;
      }
      l5 = paramFile.length();
      if ((paramString != null) && (l1 >= 0L))
      {
        if (l1 >= l5) {
          paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.RANGE_NOT_SATISFIABLE, "text/plain", "");
        }
        try
        {
          paramString.addHeader("Content-Range", "bytes 0-0/" + l5);
          paramString.addHeader("ETag", (String)localObject2);
          paramString.addHeader("Accept-Ranges", "bytes");
          return paramString;
        }
        catch (IOException paramString) {}
        if (new File(localFile, "index.htm").exists())
        {
          paramFile = new File(paramFile, (String)localObject2 + "/index.htm");
          break;
        }
        if (localFile.canRead())
        {
          paramString = new NanoHTTPD.Response(listDirectory((String)localObject2, localFile));
          paramFile = localFile;
          break;
        }
        paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.FORBIDDEN, "text/plain", "FORBIDDEN: No directory listing.");
        paramFile = localFile;
        break;
        l3 = l2;
        if (l2 < 0L) {
          l3 = l5 - 1L;
        }
        l4 = l3 - l1 + 1L;
        l2 = l4;
        if (l4 < 0L) {
          l2 = 0L;
        }
        paramString = new FileInputStream(paramFile)
        {
          public int available()
            throws IOException
          {
            return (int)l2;
          }
        };
        paramString.skip(l1);
        paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.PARTIAL_CONTENT, str, paramString);
        paramString.addHeader("Content-Length", "" + l2);
        paramString.addHeader("Content-Range", "bytes " + l1 + "-" + l3 + "/" + l5);
        paramString.addHeader("ETag", (String)localObject2);
        continue;
        paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.FORBIDDEN, "text/plain", "FORBIDDEN: Reading file failed.");
        continue;
      }
      if (((String)localObject2).equals(paramMap.get("if-none-match")))
      {
        paramString = new NanoHTTPD.Response(NanoHTTPD.Response.Status.NOT_MODIFIED, str, "");
      }
      else
      {
        paramMap = new NanoHTTPD.Response(NanoHTTPD.Response.Status.OK, str, new FileInputStream(paramFile));
        paramMap.addHeader("Content-Length", "" + l5);
        paramMap.addHeader("ETag", (String)localObject2);
        paramString = paramMap;
        if (!str.equalsIgnoreCase("text/html"))
        {
          paramString = paramMap;
          if (!str.equalsIgnoreCase("application/javascript"))
          {
            paramString = paramMap;
            if (!str.equalsIgnoreCase("text/json"))
            {
              paramMap.addHeader("Cache-Control", "max-age=2419200");
              paramString = paramMap;
              continue;
              label1133:
              continue;
              paramString = (String)localObject1;
              paramFile = localFile;
              break;
              label1145:
              str = paramString;
              if (paramString == null) {
                str = "application/octet-stream";
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.SimpleWebServer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */