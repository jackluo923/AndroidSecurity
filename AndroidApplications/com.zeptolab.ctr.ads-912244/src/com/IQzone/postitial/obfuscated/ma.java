package com.IQzone.postitial.obfuscated;

import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Iterator;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ma implements lx {
    private static final ql a;
    private final pq b;
    private final mx c;

    static {
        a = new ql();
    }

    public ma(pq pqVar, mx mxVar) {
        SAXParserFactory.newInstance();
        this.c = mxVar;
        this.b = pqVar;
    }

    private InputStream a(fh fhVar, ly lyVar) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) this.b.a(lyVar);
        try {
            String a = fhVar.a();
            ql qlVar = a;
            new StringBuilder("request body: ").append(a).toString();
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(a.length()));
            InputStream bufferedInputStream = new BufferedInputStream(new ByteArrayInputStream(a.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT)));
            OutputStream outputStream = httpURLConnection.getOutputStream();
            fh.a(bufferedInputStream, outputStream);
            outputStream.flush();
            outputStream.close();
            bufferedInputStream.close();
            if (200 == httpURLConnection.getResponseCode()) {
                return new mb(this, httpURLConnection.getInputStream(), httpURLConnection);
            }
            ql qlVar2 = a;
            new StringBuilder("connection response code = ").append(httpURLConnection.getResponseCode()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><1>, connection not OK");
        } catch (IOException e) {
            IOException iOException = e;
            qlVar2 = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><2>, IOException in getResponse ").append(iOException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><3>, IOException");
        }
    }

    public final hj a(ac acVar) {
        fh fhVar = new fh(acVar.e, "LogError", acVar.a, acVar.b, acVar.c, acVar.d, acVar.f, acVar.g, acVar.h);
        fhVar.a += String.format(" m=\"%s\" l=\"%d\" st=\"%s\" >", new Object[]{acVar.f, Integer.valueOf(acVar.g), acVar.h});
        try {
            SAXParser newSAXParser = SAXParserFactory.newInstance().newSAXParser();
            DefaultHandler ejVar = new ej();
            InputStream a = a(fhVar, ly.c);
            if (a == null) {
                throw new md("<SecureIQZoneServiceDAOImpl><98>, responseIn was null");
            }
            newSAXParser.parse(a, ejVar);
            a.close();
            if (ejVar.b()) {
                this.c.a(null);
            }
            return ejVar.a();
        } catch (ParserConfigurationException e) {
            ParserConfigurationException parserConfigurationException = e;
            ql qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><99>, ParserConfigurationException ").append(parserConfigurationException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><100>, ParserConfigException");
        } catch (IOException e2) {
            IOException iOException = e2;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><101>, IOException ").append(iOException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><102>, IOException");
        } catch (SAXException e3) {
            SAXException sAXException = e3;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><103>, SAXException ").append(sAXException.getMessage()).toString();
            throw new mc("<SecureIQZoneServiceDAOImpl><104>, SAXException");
        } catch (om e4) {
            om omVar = e4;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><105>, ResourceException").append(omVar.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><106>, ResourceException");
        }
    }

    public final hj a(bd bdVar) {
        fh fhVar = new fh("LogEvent", bdVar.a, bdVar.b, bdVar.c, bdVar.d, bdVar.e);
        Iterator listIterator = bdVar.a().listIterator();
        fhVar.a += "> <e ";
        int i = 0;
        while (listIterator.hasNext()) {
            Iterator listIterator2 = ((df) bdVar.a().get(i)).d().listIterator();
            df dfVar = (df) listIterator.next();
            fhVar.a += String.format("s=\"%d\" d=\"%s\" t=\"%d\" >", new Object[]{Integer.valueOf(dfVar.a()), dfVar.b(), Integer.valueOf(dfVar.c())});
            while (listIterator2.hasNext()) {
                ce ceVar = (ce) listIterator2.next();
                fhVar.a += String.format("<em n=\"%s\" v=\"%s\" />", new Object[]{ceVar.a(), ceVar.b()});
            }
            i++;
        }
        fhVar.a += " </e>";
        try {
            SAXParser newSAXParser = SAXParserFactory.newInstance().newSAXParser();
            DefaultHandler ekVar = new ek();
            InputStream a = a(fhVar, ly.b);
            if (a == null) {
                throw new md("<SecureIQZoneServiceDAOImpl><89>, responseIn was null");
            }
            newSAXParser.parse(a, ekVar);
            a.close();
            if (ekVar.b()) {
                this.c.a(null);
            }
            return ekVar.a();
        } catch (ParserConfigurationException e) {
            ParserConfigurationException parserConfigurationException = e;
            ql qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><90>, ParserConfigurationException ").append(parserConfigurationException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><91>, ParserConfigException");
        } catch (IOException e2) {
            IOException iOException = e2;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><92>, IOException ").append(iOException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><93>, IOException");
        } catch (SAXException e3) {
            SAXException sAXException = e3;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><94>, SAXException ").append(sAXException.getMessage()).toString();
            throw new mc("<SecureIQZoneServiceDAOImpl><95>, SAXException");
        } catch (om e4) {
            om omVar = e4;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><96>, ResourceException").append(omVar.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><97>, ResourceException");
        }
    }

    public final ik a(eg egVar) {
        fh fhVar = new fh("GetPostitialConfiguration", egVar.a, egVar.b, egVar.c, egVar.d);
        try {
            SAXParser newSAXParser = SAXParserFactory.newInstance().newSAXParser();
            DefaultHandler elVar = new el();
            InputStream a = a(fhVar, ly.a);
            if (a == null) {
                throw new md("<SecureIQZoneServiceDAOImpl><53>, responseIn was null");
            }
            newSAXParser.parse(a, elVar);
            a.close();
            if (elVar.b()) {
                this.c.a(null);
            }
            return elVar.a();
        } catch (ParserConfigurationException e) {
            ParserConfigurationException parserConfigurationException = e;
            ql qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><54>, ParserConfigurationException ").append(parserConfigurationException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><55>, ParserConfigException");
        } catch (IOException e2) {
            IOException iOException = e2;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><56>, IOException ").append(iOException.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><57>, IOException");
        } catch (SAXException e3) {
            SAXException sAXException = e3;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><58>, SAXException ").append(sAXException.getMessage()).toString();
            throw new mc("<SecureIQZoneServiceDAOImpl><59>, SAXException");
        } catch (om e4) {
            om omVar = e4;
            qlVar = a;
            new StringBuilder("<SecureIQZoneServiceDAOImpl><60>, ResourceException").append(omVar.getMessage()).toString();
            throw new md("<SecureIQZoneServiceDAOImpl><61>, ResourceException");
        }
    }
}