package org.apache.cordova;

import android.net.Uri;
import org.json.JSONObject;

class FileTransfer$1
  implements Runnable
{
  FileTransfer$1(FileTransfer paramFileTransfer, FileTransfer.RequestContext paramRequestContext, CordovaResourceApi paramCordovaResourceApi, Uri paramUri1, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, JSONObject paramJSONObject1, JSONObject paramJSONObject2, String paramString3, String paramString4, String paramString5, Uri paramUri2, boolean paramBoolean3, String paramString6, String paramString7) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4: getfield 89	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: aconst_null
    //   12: astore 4
    //   14: aconst_null
    //   15: astore 6
    //   17: aconst_null
    //   18: astore 31
    //   20: aconst_null
    //   21: astore 32
    //   23: aconst_null
    //   24: astore_3
    //   25: aconst_null
    //   26: astore 19
    //   28: aconst_null
    //   29: astore 20
    //   31: aconst_null
    //   32: astore 21
    //   34: aconst_null
    //   35: astore 22
    //   37: aconst_null
    //   38: astore 23
    //   40: aconst_null
    //   41: astore 29
    //   43: aconst_null
    //   44: astore 24
    //   46: aconst_null
    //   47: astore 25
    //   49: aconst_null
    //   50: astore 26
    //   52: aconst_null
    //   53: astore 27
    //   55: aconst_null
    //   56: astore 28
    //   58: aconst_null
    //   59: astore 30
    //   61: iconst_0
    //   62: istore 40
    //   64: iconst_0
    //   65: istore 39
    //   67: iconst_m1
    //   68: istore 35
    //   70: aload_3
    //   71: astore 15
    //   73: aload 19
    //   75: astore 7
    //   77: aload 24
    //   79: astore 8
    //   81: aload 4
    //   83: astore 16
    //   85: iload 35
    //   87: istore 37
    //   89: aload 20
    //   91: astore 9
    //   93: aload 25
    //   95: astore 10
    //   97: iload 40
    //   99: istore 38
    //   101: aload 6
    //   103: astore 18
    //   105: aload 21
    //   107: astore 13
    //   109: aload 26
    //   111: astore 14
    //   113: aload 31
    //   115: astore 17
    //   117: aload 22
    //   119: astore 11
    //   121: aload 27
    //   123: astore 12
    //   125: aload 32
    //   127: astore 5
    //   129: aload 23
    //   131: astore_1
    //   132: aload 28
    //   134: astore_2
    //   135: new 91	org/apache/cordova/FileUploadResult
    //   138: dup
    //   139: invokespecial 92	org/apache/cordova/FileUploadResult:<init>	()V
    //   142: astore 33
    //   144: aload_3
    //   145: astore 15
    //   147: aload 19
    //   149: astore 7
    //   151: aload 24
    //   153: astore 8
    //   155: aload 4
    //   157: astore 16
    //   159: iload 35
    //   161: istore 37
    //   163: aload 20
    //   165: astore 9
    //   167: aload 25
    //   169: astore 10
    //   171: iload 40
    //   173: istore 38
    //   175: aload 6
    //   177: astore 18
    //   179: aload 21
    //   181: astore 13
    //   183: aload 26
    //   185: astore 14
    //   187: aload 31
    //   189: astore 17
    //   191: aload 22
    //   193: astore 11
    //   195: aload 27
    //   197: astore 12
    //   199: aload 32
    //   201: astore 5
    //   203: aload 23
    //   205: astore_1
    //   206: aload 28
    //   208: astore_2
    //   209: new 94	org/apache/cordova/FileProgressResult
    //   212: dup
    //   213: invokespecial 95	org/apache/cordova/FileProgressResult:<init>	()V
    //   216: astore 34
    //   218: aload_3
    //   219: astore 15
    //   221: aload 19
    //   223: astore 7
    //   225: aload 24
    //   227: astore 8
    //   229: aload 4
    //   231: astore 16
    //   233: iload 35
    //   235: istore 37
    //   237: aload 20
    //   239: astore 9
    //   241: aload 25
    //   243: astore 10
    //   245: iload 40
    //   247: istore 38
    //   249: aload 6
    //   251: astore 18
    //   253: aload 21
    //   255: astore 13
    //   257: aload 26
    //   259: astore 14
    //   261: aload 31
    //   263: astore 17
    //   265: aload 22
    //   267: astore 11
    //   269: aload 27
    //   271: astore 12
    //   273: aload 32
    //   275: astore 5
    //   277: aload 23
    //   279: astore_1
    //   280: aload 28
    //   282: astore_2
    //   283: aload_0
    //   284: getfield 43	org/apache/cordova/FileTransfer$1:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
    //   287: aload_0
    //   288: getfield 45	org/apache/cordova/FileTransfer$1:val$targetUri	Landroid/net/Uri;
    //   291: invokevirtual 101	org/apache/cordova/CordovaResourceApi:createHttpConnection	(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    //   294: astore 6
    //   296: aload 29
    //   298: astore 4
    //   300: aload 30
    //   302: astore_3
    //   303: aload 6
    //   305: astore 15
    //   307: aload 19
    //   309: astore 7
    //   311: aload 24
    //   313: astore 8
    //   315: aload 6
    //   317: astore 16
    //   319: iload 35
    //   321: istore 37
    //   323: aload 20
    //   325: astore 9
    //   327: aload 25
    //   329: astore 10
    //   331: iload 40
    //   333: istore 38
    //   335: aload 6
    //   337: astore 18
    //   339: aload 21
    //   341: astore 13
    //   343: aload 26
    //   345: astore 14
    //   347: aload 6
    //   349: astore 17
    //   351: aload 22
    //   353: astore 11
    //   355: aload 27
    //   357: astore 12
    //   359: aload 6
    //   361: astore 5
    //   363: aload 23
    //   365: astore_1
    //   366: aload 28
    //   368: astore_2
    //   369: aload_0
    //   370: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   373: ifeq +365 -> 738
    //   376: aload 29
    //   378: astore 4
    //   380: aload 30
    //   382: astore_3
    //   383: aload 6
    //   385: astore 15
    //   387: aload 19
    //   389: astore 7
    //   391: aload 24
    //   393: astore 8
    //   395: aload 6
    //   397: astore 16
    //   399: iload 35
    //   401: istore 37
    //   403: aload 20
    //   405: astore 9
    //   407: aload 25
    //   409: astore 10
    //   411: iload 40
    //   413: istore 38
    //   415: aload 6
    //   417: astore 18
    //   419: aload 21
    //   421: astore 13
    //   423: aload 26
    //   425: astore 14
    //   427: aload 6
    //   429: astore 17
    //   431: aload 22
    //   433: astore 11
    //   435: aload 27
    //   437: astore 12
    //   439: aload 6
    //   441: astore 5
    //   443: aload 23
    //   445: astore_1
    //   446: aload 28
    //   448: astore_2
    //   449: aload_0
    //   450: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   453: ifeq +285 -> 738
    //   456: aload 6
    //   458: astore 15
    //   460: aload 19
    //   462: astore 7
    //   464: aload 24
    //   466: astore 8
    //   468: aload 6
    //   470: astore 16
    //   472: iload 35
    //   474: istore 37
    //   476: aload 20
    //   478: astore 9
    //   480: aload 25
    //   482: astore 10
    //   484: iload 40
    //   486: istore 38
    //   488: aload 6
    //   490: astore 18
    //   492: aload 21
    //   494: astore 13
    //   496: aload 26
    //   498: astore 14
    //   500: aload 6
    //   502: astore 17
    //   504: aload 22
    //   506: astore 11
    //   508: aload 27
    //   510: astore 12
    //   512: aload 6
    //   514: astore 5
    //   516: aload 23
    //   518: astore_1
    //   519: aload 28
    //   521: astore_2
    //   522: aload 6
    //   524: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   527: astore 29
    //   529: aload 6
    //   531: astore 15
    //   533: aload 19
    //   535: astore 7
    //   537: aload 24
    //   539: astore 8
    //   541: aload 6
    //   543: astore 16
    //   545: iload 35
    //   547: istore 37
    //   549: aload 20
    //   551: astore 9
    //   553: aload 25
    //   555: astore 10
    //   557: iload 40
    //   559: istore 38
    //   561: aload 6
    //   563: astore 18
    //   565: aload 21
    //   567: astore 13
    //   569: aload 26
    //   571: astore 14
    //   573: aload 6
    //   575: astore 17
    //   577: aload 22
    //   579: astore 11
    //   581: aload 27
    //   583: astore 12
    //   585: aload 6
    //   587: astore 5
    //   589: aload 23
    //   591: astore_1
    //   592: aload 28
    //   594: astore_2
    //   595: aload 29
    //   597: invokestatic 107	org/apache/cordova/FileTransfer:access$000	(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    //   600: astore_3
    //   601: aload 6
    //   603: astore 15
    //   605: aload 19
    //   607: astore 7
    //   609: aload_3
    //   610: astore 8
    //   612: aload 6
    //   614: astore 16
    //   616: iload 35
    //   618: istore 37
    //   620: aload 20
    //   622: astore 9
    //   624: aload_3
    //   625: astore 10
    //   627: iload 40
    //   629: istore 38
    //   631: aload 6
    //   633: astore 18
    //   635: aload 21
    //   637: astore 13
    //   639: aload_3
    //   640: astore 14
    //   642: aload 6
    //   644: astore 17
    //   646: aload 22
    //   648: astore 11
    //   650: aload_3
    //   651: astore 12
    //   653: aload 6
    //   655: astore 5
    //   657: aload 23
    //   659: astore_1
    //   660: aload_3
    //   661: astore_2
    //   662: aload 29
    //   664: invokevirtual 111	javax/net/ssl/HttpsURLConnection:getHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
    //   667: astore 4
    //   669: aload 6
    //   671: astore 15
    //   673: aload 4
    //   675: astore 7
    //   677: aload_3
    //   678: astore 8
    //   680: aload 6
    //   682: astore 16
    //   684: iload 35
    //   686: istore 37
    //   688: aload 4
    //   690: astore 9
    //   692: aload_3
    //   693: astore 10
    //   695: iload 40
    //   697: istore 38
    //   699: aload 6
    //   701: astore 18
    //   703: aload 4
    //   705: astore 13
    //   707: aload_3
    //   708: astore 14
    //   710: aload 6
    //   712: astore 17
    //   714: aload 4
    //   716: astore 11
    //   718: aload_3
    //   719: astore 12
    //   721: aload 6
    //   723: astore 5
    //   725: aload 4
    //   727: astore_1
    //   728: aload_3
    //   729: astore_2
    //   730: aload 29
    //   732: invokestatic 114	org/apache/cordova/FileTransfer:access$100	()Ljavax/net/ssl/HostnameVerifier;
    //   735: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   738: aload 6
    //   740: astore 15
    //   742: aload 4
    //   744: astore 7
    //   746: aload_3
    //   747: astore 8
    //   749: aload 6
    //   751: astore 16
    //   753: iload 35
    //   755: istore 37
    //   757: aload 4
    //   759: astore 9
    //   761: aload_3
    //   762: astore 10
    //   764: iload 40
    //   766: istore 38
    //   768: aload 6
    //   770: astore 18
    //   772: aload 4
    //   774: astore 13
    //   776: aload_3
    //   777: astore 14
    //   779: aload 6
    //   781: astore 17
    //   783: aload 4
    //   785: astore 11
    //   787: aload_3
    //   788: astore 12
    //   790: aload 6
    //   792: astore 5
    //   794: aload 4
    //   796: astore_1
    //   797: aload_3
    //   798: astore_2
    //   799: aload 6
    //   801: iconst_1
    //   802: invokevirtual 124	java/net/HttpURLConnection:setDoInput	(Z)V
    //   805: aload 6
    //   807: astore 15
    //   809: aload 4
    //   811: astore 7
    //   813: aload_3
    //   814: astore 8
    //   816: aload 6
    //   818: astore 16
    //   820: iload 35
    //   822: istore 37
    //   824: aload 4
    //   826: astore 9
    //   828: aload_3
    //   829: astore 10
    //   831: iload 40
    //   833: istore 38
    //   835: aload 6
    //   837: astore 18
    //   839: aload 4
    //   841: astore 13
    //   843: aload_3
    //   844: astore 14
    //   846: aload 6
    //   848: astore 17
    //   850: aload 4
    //   852: astore 11
    //   854: aload_3
    //   855: astore 12
    //   857: aload 6
    //   859: astore 5
    //   861: aload 4
    //   863: astore_1
    //   864: aload_3
    //   865: astore_2
    //   866: aload 6
    //   868: iconst_1
    //   869: invokevirtual 127	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   872: aload 6
    //   874: astore 15
    //   876: aload 4
    //   878: astore 7
    //   880: aload_3
    //   881: astore 8
    //   883: aload 6
    //   885: astore 16
    //   887: iload 35
    //   889: istore 37
    //   891: aload 4
    //   893: astore 9
    //   895: aload_3
    //   896: astore 10
    //   898: iload 40
    //   900: istore 38
    //   902: aload 6
    //   904: astore 18
    //   906: aload 4
    //   908: astore 13
    //   910: aload_3
    //   911: astore 14
    //   913: aload 6
    //   915: astore 17
    //   917: aload 4
    //   919: astore 11
    //   921: aload_3
    //   922: astore 12
    //   924: aload 6
    //   926: astore 5
    //   928: aload 4
    //   930: astore_1
    //   931: aload_3
    //   932: astore_2
    //   933: aload 6
    //   935: iconst_0
    //   936: invokevirtual 130	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   939: aload 6
    //   941: astore 15
    //   943: aload 4
    //   945: astore 7
    //   947: aload_3
    //   948: astore 8
    //   950: aload 6
    //   952: astore 16
    //   954: iload 35
    //   956: istore 37
    //   958: aload 4
    //   960: astore 9
    //   962: aload_3
    //   963: astore 10
    //   965: iload 40
    //   967: istore 38
    //   969: aload 6
    //   971: astore 18
    //   973: aload 4
    //   975: astore 13
    //   977: aload_3
    //   978: astore 14
    //   980: aload 6
    //   982: astore 17
    //   984: aload 4
    //   986: astore 11
    //   988: aload_3
    //   989: astore 12
    //   991: aload 6
    //   993: astore 5
    //   995: aload 4
    //   997: astore_1
    //   998: aload_3
    //   999: astore_2
    //   1000: aload 6
    //   1002: aload_0
    //   1003: getfield 51	org/apache/cordova/FileTransfer$1:val$httpMethod	Ljava/lang/String;
    //   1006: invokevirtual 134	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   1009: aload 6
    //   1011: astore 15
    //   1013: aload 4
    //   1015: astore 7
    //   1017: aload_3
    //   1018: astore 8
    //   1020: aload 6
    //   1022: astore 16
    //   1024: iload 35
    //   1026: istore 37
    //   1028: aload 4
    //   1030: astore 9
    //   1032: aload_3
    //   1033: astore 10
    //   1035: iload 40
    //   1037: istore 38
    //   1039: aload 6
    //   1041: astore 18
    //   1043: aload 4
    //   1045: astore 13
    //   1047: aload_3
    //   1048: astore 14
    //   1050: aload 6
    //   1052: astore 17
    //   1054: aload 4
    //   1056: astore 11
    //   1058: aload_3
    //   1059: astore 12
    //   1061: aload 6
    //   1063: astore 5
    //   1065: aload 4
    //   1067: astore_1
    //   1068: aload_3
    //   1069: astore_2
    //   1070: aload 6
    //   1072: ldc -120
    //   1074: ldc -118
    //   1076: invokevirtual 142	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   1079: aload 6
    //   1081: astore 15
    //   1083: aload 4
    //   1085: astore 7
    //   1087: aload_3
    //   1088: astore 8
    //   1090: aload 6
    //   1092: astore 16
    //   1094: iload 35
    //   1096: istore 37
    //   1098: aload 4
    //   1100: astore 9
    //   1102: aload_3
    //   1103: astore 10
    //   1105: iload 40
    //   1107: istore 38
    //   1109: aload 6
    //   1111: astore 18
    //   1113: aload 4
    //   1115: astore 13
    //   1117: aload_3
    //   1118: astore 14
    //   1120: aload 6
    //   1122: astore 17
    //   1124: aload 4
    //   1126: astore 11
    //   1128: aload_3
    //   1129: astore 12
    //   1131: aload 6
    //   1133: astore 5
    //   1135: aload 4
    //   1137: astore_1
    //   1138: aload_3
    //   1139: astore_2
    //   1140: invokestatic 148	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   1143: aload_0
    //   1144: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
    //   1147: invokevirtual 152	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
    //   1150: astore 19
    //   1152: aload 19
    //   1154: ifnull +73 -> 1227
    //   1157: aload 6
    //   1159: astore 15
    //   1161: aload 4
    //   1163: astore 7
    //   1165: aload_3
    //   1166: astore 8
    //   1168: aload 6
    //   1170: astore 16
    //   1172: iload 35
    //   1174: istore 37
    //   1176: aload 4
    //   1178: astore 9
    //   1180: aload_3
    //   1181: astore 10
    //   1183: iload 40
    //   1185: istore 38
    //   1187: aload 6
    //   1189: astore 18
    //   1191: aload 4
    //   1193: astore 13
    //   1195: aload_3
    //   1196: astore 14
    //   1198: aload 6
    //   1200: astore 17
    //   1202: aload 4
    //   1204: astore 11
    //   1206: aload_3
    //   1207: astore 12
    //   1209: aload 6
    //   1211: astore 5
    //   1213: aload 4
    //   1215: astore_1
    //   1216: aload_3
    //   1217: astore_2
    //   1218: aload 6
    //   1220: ldc -102
    //   1222: aload 19
    //   1224: invokevirtual 142	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   1227: aload 6
    //   1229: astore 15
    //   1231: aload 4
    //   1233: astore 7
    //   1235: aload_3
    //   1236: astore 8
    //   1238: aload 6
    //   1240: astore 16
    //   1242: iload 35
    //   1244: istore 37
    //   1246: aload 4
    //   1248: astore 9
    //   1250: aload_3
    //   1251: astore 10
    //   1253: iload 40
    //   1255: istore 38
    //   1257: aload 6
    //   1259: astore 18
    //   1261: aload 4
    //   1263: astore 13
    //   1265: aload_3
    //   1266: astore 14
    //   1268: aload 6
    //   1270: astore 17
    //   1272: aload 4
    //   1274: astore 11
    //   1276: aload_3
    //   1277: astore 12
    //   1279: aload 6
    //   1281: astore 5
    //   1283: aload 4
    //   1285: astore_1
    //   1286: aload_3
    //   1287: astore_2
    //   1288: aload_0
    //   1289: getfield 55	org/apache/cordova/FileTransfer$1:val$headers	Lorg/json/JSONObject;
    //   1292: ifnull +73 -> 1365
    //   1295: aload 6
    //   1297: astore 15
    //   1299: aload 4
    //   1301: astore 7
    //   1303: aload_3
    //   1304: astore 8
    //   1306: aload 6
    //   1308: astore 16
    //   1310: iload 35
    //   1312: istore 37
    //   1314: aload 4
    //   1316: astore 9
    //   1318: aload_3
    //   1319: astore 10
    //   1321: iload 40
    //   1323: istore 38
    //   1325: aload 6
    //   1327: astore 18
    //   1329: aload 4
    //   1331: astore 13
    //   1333: aload_3
    //   1334: astore 14
    //   1336: aload 6
    //   1338: astore 17
    //   1340: aload 4
    //   1342: astore 11
    //   1344: aload_3
    //   1345: astore 12
    //   1347: aload 6
    //   1349: astore 5
    //   1351: aload 4
    //   1353: astore_1
    //   1354: aload_3
    //   1355: astore_2
    //   1356: aload 6
    //   1358: aload_0
    //   1359: getfield 55	org/apache/cordova/FileTransfer$1:val$headers	Lorg/json/JSONObject;
    //   1362: invokestatic 158	org/apache/cordova/FileTransfer:access$200	(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    //   1365: aload 6
    //   1367: astore 15
    //   1369: aload 4
    //   1371: astore 7
    //   1373: aload_3
    //   1374: astore 8
    //   1376: aload 6
    //   1378: astore 16
    //   1380: iload 35
    //   1382: istore 37
    //   1384: aload 4
    //   1386: astore 9
    //   1388: aload_3
    //   1389: astore 10
    //   1391: iload 40
    //   1393: istore 38
    //   1395: aload 6
    //   1397: astore 18
    //   1399: aload 4
    //   1401: astore 13
    //   1403: aload_3
    //   1404: astore 14
    //   1406: aload 6
    //   1408: astore 17
    //   1410: aload 4
    //   1412: astore 11
    //   1414: aload_3
    //   1415: astore 12
    //   1417: aload 6
    //   1419: astore 5
    //   1421: aload 4
    //   1423: astore_1
    //   1424: aload_3
    //   1425: astore_2
    //   1426: new 160	java/lang/StringBuilder
    //   1429: dup
    //   1430: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   1433: astore 19
    //   1435: aload 6
    //   1437: astore 15
    //   1439: aload 4
    //   1441: astore 7
    //   1443: aload_3
    //   1444: astore 8
    //   1446: aload 6
    //   1448: astore 16
    //   1450: iload 35
    //   1452: istore 37
    //   1454: aload 4
    //   1456: astore 9
    //   1458: aload_3
    //   1459: astore 10
    //   1461: iload 40
    //   1463: istore 38
    //   1465: aload 6
    //   1467: astore 17
    //   1469: aload 4
    //   1471: astore 11
    //   1473: aload_3
    //   1474: astore 12
    //   1476: aload 6
    //   1478: astore 5
    //   1480: aload 4
    //   1482: astore_1
    //   1483: aload_3
    //   1484: astore_2
    //   1485: aload_0
    //   1486: getfield 57	org/apache/cordova/FileTransfer$1:val$params	Lorg/json/JSONObject;
    //   1489: invokevirtual 167	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   1492: astore 13
    //   1494: aload 6
    //   1496: astore 15
    //   1498: aload 4
    //   1500: astore 7
    //   1502: aload_3
    //   1503: astore 8
    //   1505: aload 6
    //   1507: astore 16
    //   1509: iload 35
    //   1511: istore 37
    //   1513: aload 4
    //   1515: astore 9
    //   1517: aload_3
    //   1518: astore 10
    //   1520: iload 40
    //   1522: istore 38
    //   1524: aload 6
    //   1526: astore 17
    //   1528: aload 4
    //   1530: astore 11
    //   1532: aload_3
    //   1533: astore 12
    //   1535: aload 6
    //   1537: astore 5
    //   1539: aload 4
    //   1541: astore_1
    //   1542: aload_3
    //   1543: astore_2
    //   1544: aload 13
    //   1546: invokeinterface 173 1 0
    //   1551: ifeq +532 -> 2083
    //   1554: aload 6
    //   1556: astore 15
    //   1558: aload 4
    //   1560: astore 7
    //   1562: aload_3
    //   1563: astore 8
    //   1565: aload 6
    //   1567: astore 16
    //   1569: iload 35
    //   1571: istore 37
    //   1573: aload 4
    //   1575: astore 9
    //   1577: aload_3
    //   1578: astore 10
    //   1580: iload 40
    //   1582: istore 38
    //   1584: aload 6
    //   1586: astore 17
    //   1588: aload 4
    //   1590: astore 11
    //   1592: aload_3
    //   1593: astore 12
    //   1595: aload 6
    //   1597: astore 5
    //   1599: aload 4
    //   1601: astore_1
    //   1602: aload_3
    //   1603: astore_2
    //   1604: aload 13
    //   1606: invokeinterface 177 1 0
    //   1611: astore 14
    //   1613: aload 6
    //   1615: astore 15
    //   1617: aload 4
    //   1619: astore 7
    //   1621: aload_3
    //   1622: astore 8
    //   1624: aload 6
    //   1626: astore 16
    //   1628: iload 35
    //   1630: istore 37
    //   1632: aload 4
    //   1634: astore 9
    //   1636: aload_3
    //   1637: astore 10
    //   1639: iload 40
    //   1641: istore 38
    //   1643: aload 6
    //   1645: astore 17
    //   1647: aload 4
    //   1649: astore 11
    //   1651: aload_3
    //   1652: astore 12
    //   1654: aload 6
    //   1656: astore 5
    //   1658: aload 4
    //   1660: astore_1
    //   1661: aload_3
    //   1662: astore_2
    //   1663: aload 14
    //   1665: invokestatic 183	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1668: ldc -71
    //   1670: invokevirtual 189	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1673: ifne -179 -> 1494
    //   1676: aload 6
    //   1678: astore 15
    //   1680: aload 4
    //   1682: astore 7
    //   1684: aload_3
    //   1685: astore 8
    //   1687: aload 6
    //   1689: astore 16
    //   1691: iload 35
    //   1693: istore 37
    //   1695: aload 4
    //   1697: astore 9
    //   1699: aload_3
    //   1700: astore 10
    //   1702: iload 40
    //   1704: istore 38
    //   1706: aload 6
    //   1708: astore 17
    //   1710: aload 4
    //   1712: astore 11
    //   1714: aload_3
    //   1715: astore 12
    //   1717: aload 6
    //   1719: astore 5
    //   1721: aload 4
    //   1723: astore_1
    //   1724: aload_3
    //   1725: astore_2
    //   1726: aload 19
    //   1728: ldc -65
    //   1730: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1733: ldc -59
    //   1735: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1738: ldc -57
    //   1740: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1743: pop
    //   1744: aload 6
    //   1746: astore 15
    //   1748: aload 4
    //   1750: astore 7
    //   1752: aload_3
    //   1753: astore 8
    //   1755: aload 6
    //   1757: astore 16
    //   1759: iload 35
    //   1761: istore 37
    //   1763: aload 4
    //   1765: astore 9
    //   1767: aload_3
    //   1768: astore 10
    //   1770: iload 40
    //   1772: istore 38
    //   1774: aload 6
    //   1776: astore 17
    //   1778: aload 4
    //   1780: astore 11
    //   1782: aload_3
    //   1783: astore 12
    //   1785: aload 6
    //   1787: astore 5
    //   1789: aload 4
    //   1791: astore_1
    //   1792: aload_3
    //   1793: astore_2
    //   1794: aload 19
    //   1796: ldc -55
    //   1798: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1801: aload 14
    //   1803: invokevirtual 205	java/lang/Object:toString	()Ljava/lang/String;
    //   1806: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1809: bipush 34
    //   1811: invokevirtual 208	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   1814: pop
    //   1815: aload 6
    //   1817: astore 15
    //   1819: aload 4
    //   1821: astore 7
    //   1823: aload_3
    //   1824: astore 8
    //   1826: aload 6
    //   1828: astore 16
    //   1830: iload 35
    //   1832: istore 37
    //   1834: aload 4
    //   1836: astore 9
    //   1838: aload_3
    //   1839: astore 10
    //   1841: iload 40
    //   1843: istore 38
    //   1845: aload 6
    //   1847: astore 17
    //   1849: aload 4
    //   1851: astore 11
    //   1853: aload_3
    //   1854: astore 12
    //   1856: aload 6
    //   1858: astore 5
    //   1860: aload 4
    //   1862: astore_1
    //   1863: aload_3
    //   1864: astore_2
    //   1865: aload 19
    //   1867: ldc -57
    //   1869: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1872: ldc -57
    //   1874: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1877: pop
    //   1878: aload 6
    //   1880: astore 15
    //   1882: aload 4
    //   1884: astore 7
    //   1886: aload_3
    //   1887: astore 8
    //   1889: aload 6
    //   1891: astore 16
    //   1893: iload 35
    //   1895: istore 37
    //   1897: aload 4
    //   1899: astore 9
    //   1901: aload_3
    //   1902: astore 10
    //   1904: iload 40
    //   1906: istore 38
    //   1908: aload 6
    //   1910: astore 17
    //   1912: aload 4
    //   1914: astore 11
    //   1916: aload_3
    //   1917: astore 12
    //   1919: aload 6
    //   1921: astore 5
    //   1923: aload 4
    //   1925: astore_1
    //   1926: aload_3
    //   1927: astore_2
    //   1928: aload 19
    //   1930: aload_0
    //   1931: getfield 57	org/apache/cordova/FileTransfer$1:val$params	Lorg/json/JSONObject;
    //   1934: aload 14
    //   1936: invokevirtual 205	java/lang/Object:toString	()Ljava/lang/String;
    //   1939: invokevirtual 211	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1942: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1945: pop
    //   1946: aload 6
    //   1948: astore 15
    //   1950: aload 4
    //   1952: astore 7
    //   1954: aload_3
    //   1955: astore 8
    //   1957: aload 6
    //   1959: astore 16
    //   1961: iload 35
    //   1963: istore 37
    //   1965: aload 4
    //   1967: astore 9
    //   1969: aload_3
    //   1970: astore 10
    //   1972: iload 40
    //   1974: istore 38
    //   1976: aload 6
    //   1978: astore 17
    //   1980: aload 4
    //   1982: astore 11
    //   1984: aload_3
    //   1985: astore 12
    //   1987: aload 6
    //   1989: astore 5
    //   1991: aload 4
    //   1993: astore_1
    //   1994: aload_3
    //   1995: astore_2
    //   1996: aload 19
    //   1998: ldc -57
    //   2000: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2003: pop
    //   2004: goto -510 -> 1494
    //   2007: astore 20
    //   2009: aload 6
    //   2011: astore 15
    //   2013: aload 4
    //   2015: astore 7
    //   2017: aload_3
    //   2018: astore 8
    //   2020: aload 6
    //   2022: astore 16
    //   2024: iload 35
    //   2026: istore 37
    //   2028: aload 4
    //   2030: astore 9
    //   2032: aload_3
    //   2033: astore 10
    //   2035: iload 40
    //   2037: istore 38
    //   2039: aload 6
    //   2041: astore 18
    //   2043: aload 4
    //   2045: astore 13
    //   2047: aload_3
    //   2048: astore 14
    //   2050: aload 6
    //   2052: astore 17
    //   2054: aload 4
    //   2056: astore 11
    //   2058: aload_3
    //   2059: astore 12
    //   2061: aload 6
    //   2063: astore 5
    //   2065: aload 4
    //   2067: astore_1
    //   2068: aload_3
    //   2069: astore_2
    //   2070: ldc -43
    //   2072: aload 20
    //   2074: invokevirtual 216	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   2077: aload 20
    //   2079: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2082: pop
    //   2083: aload 6
    //   2085: astore 15
    //   2087: aload 4
    //   2089: astore 7
    //   2091: aload_3
    //   2092: astore 8
    //   2094: aload 6
    //   2096: astore 16
    //   2098: iload 35
    //   2100: istore 37
    //   2102: aload 4
    //   2104: astore 9
    //   2106: aload_3
    //   2107: astore 10
    //   2109: iload 40
    //   2111: istore 38
    //   2113: aload 6
    //   2115: astore 18
    //   2117: aload 4
    //   2119: astore 13
    //   2121: aload_3
    //   2122: astore 14
    //   2124: aload 6
    //   2126: astore 17
    //   2128: aload 4
    //   2130: astore 11
    //   2132: aload_3
    //   2133: astore 12
    //   2135: aload 6
    //   2137: astore 5
    //   2139: aload 4
    //   2141: astore_1
    //   2142: aload_3
    //   2143: astore_2
    //   2144: aload 19
    //   2146: ldc -65
    //   2148: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2151: ldc -59
    //   2153: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2156: ldc -57
    //   2158: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2161: pop
    //   2162: aload 6
    //   2164: astore 15
    //   2166: aload 4
    //   2168: astore 7
    //   2170: aload_3
    //   2171: astore 8
    //   2173: aload 6
    //   2175: astore 16
    //   2177: iload 35
    //   2179: istore 37
    //   2181: aload 4
    //   2183: astore 9
    //   2185: aload_3
    //   2186: astore 10
    //   2188: iload 40
    //   2190: istore 38
    //   2192: aload 6
    //   2194: astore 18
    //   2196: aload 4
    //   2198: astore 13
    //   2200: aload_3
    //   2201: astore 14
    //   2203: aload 6
    //   2205: astore 17
    //   2207: aload 4
    //   2209: astore 11
    //   2211: aload_3
    //   2212: astore 12
    //   2214: aload 6
    //   2216: astore 5
    //   2218: aload 4
    //   2220: astore_1
    //   2221: aload_3
    //   2222: astore_2
    //   2223: aload 19
    //   2225: ldc -55
    //   2227: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2230: aload_0
    //   2231: getfield 59	org/apache/cordova/FileTransfer$1:val$fileKey	Ljava/lang/String;
    //   2234: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2237: ldc -32
    //   2239: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2242: pop
    //   2243: aload 6
    //   2245: astore 15
    //   2247: aload 4
    //   2249: astore 7
    //   2251: aload_3
    //   2252: astore 8
    //   2254: aload 6
    //   2256: astore 16
    //   2258: iload 35
    //   2260: istore 37
    //   2262: aload 4
    //   2264: astore 9
    //   2266: aload_3
    //   2267: astore 10
    //   2269: iload 40
    //   2271: istore 38
    //   2273: aload 6
    //   2275: astore 18
    //   2277: aload 4
    //   2279: astore 13
    //   2281: aload_3
    //   2282: astore 14
    //   2284: aload 6
    //   2286: astore 17
    //   2288: aload 4
    //   2290: astore 11
    //   2292: aload_3
    //   2293: astore 12
    //   2295: aload 6
    //   2297: astore 5
    //   2299: aload 4
    //   2301: astore_1
    //   2302: aload_3
    //   2303: astore_2
    //   2304: aload 19
    //   2306: ldc -30
    //   2308: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2311: aload_0
    //   2312: getfield 61	org/apache/cordova/FileTransfer$1:val$fileName	Ljava/lang/String;
    //   2315: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2318: bipush 34
    //   2320: invokevirtual 208	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   2323: ldc -57
    //   2325: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2328: pop
    //   2329: aload 6
    //   2331: astore 15
    //   2333: aload 4
    //   2335: astore 7
    //   2337: aload_3
    //   2338: astore 8
    //   2340: aload 6
    //   2342: astore 16
    //   2344: iload 35
    //   2346: istore 37
    //   2348: aload 4
    //   2350: astore 9
    //   2352: aload_3
    //   2353: astore 10
    //   2355: iload 40
    //   2357: istore 38
    //   2359: aload 6
    //   2361: astore 18
    //   2363: aload 4
    //   2365: astore 13
    //   2367: aload_3
    //   2368: astore 14
    //   2370: aload 6
    //   2372: astore 17
    //   2374: aload 4
    //   2376: astore 11
    //   2378: aload_3
    //   2379: astore 12
    //   2381: aload 6
    //   2383: astore 5
    //   2385: aload 4
    //   2387: astore_1
    //   2388: aload_3
    //   2389: astore_2
    //   2390: aload 19
    //   2392: ldc -28
    //   2394: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2397: aload_0
    //   2398: getfield 63	org/apache/cordova/FileTransfer$1:val$mimeType	Ljava/lang/String;
    //   2401: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2404: ldc -57
    //   2406: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2409: ldc -57
    //   2411: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2414: pop
    //   2415: aload 6
    //   2417: astore 15
    //   2419: aload 4
    //   2421: astore 7
    //   2423: aload_3
    //   2424: astore 8
    //   2426: aload 6
    //   2428: astore 16
    //   2430: iload 35
    //   2432: istore 37
    //   2434: aload 4
    //   2436: astore 9
    //   2438: aload_3
    //   2439: astore 10
    //   2441: iload 40
    //   2443: istore 38
    //   2445: aload 6
    //   2447: astore 18
    //   2449: aload 4
    //   2451: astore 13
    //   2453: aload_3
    //   2454: astore 14
    //   2456: aload 6
    //   2458: astore 17
    //   2460: aload 4
    //   2462: astore 11
    //   2464: aload_3
    //   2465: astore 12
    //   2467: aload 6
    //   2469: astore 5
    //   2471: aload 4
    //   2473: astore_1
    //   2474: aload_3
    //   2475: astore_2
    //   2476: aload 19
    //   2478: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2481: ldc -25
    //   2483: invokevirtual 235	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   2486: astore 23
    //   2488: aload 6
    //   2490: astore 15
    //   2492: aload 4
    //   2494: astore 7
    //   2496: aload_3
    //   2497: astore 8
    //   2499: aload 6
    //   2501: astore 16
    //   2503: iload 35
    //   2505: istore 37
    //   2507: aload 4
    //   2509: astore 9
    //   2511: aload_3
    //   2512: astore 10
    //   2514: iload 40
    //   2516: istore 38
    //   2518: aload 6
    //   2520: astore 18
    //   2522: aload 4
    //   2524: astore 13
    //   2526: aload_3
    //   2527: astore 14
    //   2529: aload 6
    //   2531: astore 17
    //   2533: aload 4
    //   2535: astore 11
    //   2537: aload_3
    //   2538: astore 12
    //   2540: aload 6
    //   2542: astore 5
    //   2544: aload 4
    //   2546: astore_1
    //   2547: aload_3
    //   2548: astore_2
    //   2549: ldc -19
    //   2551: ldc -25
    //   2553: invokevirtual 235	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   2556: astore 22
    //   2558: aload 6
    //   2560: astore 15
    //   2562: aload 4
    //   2564: astore 7
    //   2566: aload_3
    //   2567: astore 8
    //   2569: aload 6
    //   2571: astore 16
    //   2573: iload 35
    //   2575: istore 37
    //   2577: aload 4
    //   2579: astore 9
    //   2581: aload_3
    //   2582: astore 10
    //   2584: iload 40
    //   2586: istore 38
    //   2588: aload 6
    //   2590: astore 18
    //   2592: aload 4
    //   2594: astore 13
    //   2596: aload_3
    //   2597: astore 14
    //   2599: aload 6
    //   2601: astore 17
    //   2603: aload 4
    //   2605: astore 11
    //   2607: aload_3
    //   2608: astore 12
    //   2610: aload 6
    //   2612: astore 5
    //   2614: aload 4
    //   2616: astore_1
    //   2617: aload_3
    //   2618: astore_2
    //   2619: aload_0
    //   2620: getfield 43	org/apache/cordova/FileTransfer$1:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
    //   2623: aload_0
    //   2624: getfield 65	org/apache/cordova/FileTransfer$1:val$sourceUri	Landroid/net/Uri;
    //   2627: invokevirtual 241	org/apache/cordova/CordovaResourceApi:openForRead	(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    //   2630: astore 21
    //   2632: aload 6
    //   2634: astore 15
    //   2636: aload 4
    //   2638: astore 7
    //   2640: aload_3
    //   2641: astore 8
    //   2643: aload 6
    //   2645: astore 16
    //   2647: iload 35
    //   2649: istore 37
    //   2651: aload 4
    //   2653: astore 9
    //   2655: aload_3
    //   2656: astore 10
    //   2658: iload 40
    //   2660: istore 38
    //   2662: aload 6
    //   2664: astore 18
    //   2666: aload 4
    //   2668: astore 13
    //   2670: aload_3
    //   2671: astore 14
    //   2673: aload 6
    //   2675: astore 17
    //   2677: aload 4
    //   2679: astore 11
    //   2681: aload_3
    //   2682: astore 12
    //   2684: aload 6
    //   2686: astore 5
    //   2688: aload 4
    //   2690: astore_1
    //   2691: aload_3
    //   2692: astore_2
    //   2693: aload 23
    //   2695: arraylength
    //   2696: istore 41
    //   2698: aload 6
    //   2700: astore 15
    //   2702: aload 4
    //   2704: astore 7
    //   2706: aload_3
    //   2707: astore 8
    //   2709: aload 6
    //   2711: astore 16
    //   2713: iload 35
    //   2715: istore 37
    //   2717: aload 4
    //   2719: astore 9
    //   2721: aload_3
    //   2722: astore 10
    //   2724: iload 40
    //   2726: istore 38
    //   2728: aload 6
    //   2730: astore 18
    //   2732: aload 4
    //   2734: astore 13
    //   2736: aload_3
    //   2737: astore 14
    //   2739: aload 6
    //   2741: astore 17
    //   2743: aload 4
    //   2745: astore 11
    //   2747: aload_3
    //   2748: astore 12
    //   2750: aload 6
    //   2752: astore 5
    //   2754: aload 4
    //   2756: astore_1
    //   2757: aload_3
    //   2758: astore_2
    //   2759: aload 22
    //   2761: arraylength
    //   2762: istore 42
    //   2764: iload 35
    //   2766: istore 36
    //   2768: aload 6
    //   2770: astore 15
    //   2772: aload 4
    //   2774: astore 7
    //   2776: aload_3
    //   2777: astore 8
    //   2779: aload 6
    //   2781: astore 16
    //   2783: iload 35
    //   2785: istore 37
    //   2787: aload 4
    //   2789: astore 9
    //   2791: aload_3
    //   2792: astore 10
    //   2794: iload 40
    //   2796: istore 38
    //   2798: aload 6
    //   2800: astore 18
    //   2802: aload 4
    //   2804: astore 13
    //   2806: aload_3
    //   2807: astore 14
    //   2809: aload 6
    //   2811: astore 17
    //   2813: aload 4
    //   2815: astore 11
    //   2817: aload_3
    //   2818: astore 12
    //   2820: aload 6
    //   2822: astore 5
    //   2824: aload 4
    //   2826: astore_1
    //   2827: aload_3
    //   2828: astore_2
    //   2829: aload 21
    //   2831: getfield 247	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
    //   2834: lconst_0
    //   2835: lcmp
    //   2836: iflt +214 -> 3050
    //   2839: aload 6
    //   2841: astore 15
    //   2843: aload 4
    //   2845: astore 7
    //   2847: aload_3
    //   2848: astore 8
    //   2850: aload 6
    //   2852: astore 16
    //   2854: iload 35
    //   2856: istore 37
    //   2858: aload 4
    //   2860: astore 9
    //   2862: aload_3
    //   2863: astore 10
    //   2865: iload 40
    //   2867: istore 38
    //   2869: aload 6
    //   2871: astore 18
    //   2873: aload 4
    //   2875: astore 13
    //   2877: aload_3
    //   2878: astore 14
    //   2880: aload 6
    //   2882: astore 17
    //   2884: aload 4
    //   2886: astore 11
    //   2888: aload_3
    //   2889: astore 12
    //   2891: aload 6
    //   2893: astore 5
    //   2895: aload 4
    //   2897: astore_1
    //   2898: aload_3
    //   2899: astore_2
    //   2900: aload 21
    //   2902: getfield 247	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
    //   2905: l2i
    //   2906: iload 41
    //   2908: iload 42
    //   2910: iadd
    //   2911: iadd
    //   2912: istore 36
    //   2914: aload 6
    //   2916: astore 15
    //   2918: aload 4
    //   2920: astore 7
    //   2922: aload_3
    //   2923: astore 8
    //   2925: aload 6
    //   2927: astore 16
    //   2929: iload 36
    //   2931: istore 37
    //   2933: aload 4
    //   2935: astore 9
    //   2937: aload_3
    //   2938: astore 10
    //   2940: iload 40
    //   2942: istore 38
    //   2944: aload 6
    //   2946: astore 18
    //   2948: aload 4
    //   2950: astore 13
    //   2952: aload_3
    //   2953: astore 14
    //   2955: aload 6
    //   2957: astore 17
    //   2959: aload 4
    //   2961: astore 11
    //   2963: aload_3
    //   2964: astore 12
    //   2966: aload 6
    //   2968: astore 5
    //   2970: aload 4
    //   2972: astore_1
    //   2973: aload_3
    //   2974: astore_2
    //   2975: aload 34
    //   2977: iconst_1
    //   2978: invokevirtual 250	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
    //   2981: aload 6
    //   2983: astore 15
    //   2985: aload 4
    //   2987: astore 7
    //   2989: aload_3
    //   2990: astore 8
    //   2992: aload 6
    //   2994: astore 16
    //   2996: iload 36
    //   2998: istore 37
    //   3000: aload 4
    //   3002: astore 9
    //   3004: aload_3
    //   3005: astore 10
    //   3007: iload 40
    //   3009: istore 38
    //   3011: aload 6
    //   3013: astore 18
    //   3015: aload 4
    //   3017: astore 13
    //   3019: aload_3
    //   3020: astore 14
    //   3022: aload 6
    //   3024: astore 17
    //   3026: aload 4
    //   3028: astore 11
    //   3030: aload_3
    //   3031: astore 12
    //   3033: aload 6
    //   3035: astore 5
    //   3037: aload 4
    //   3039: astore_1
    //   3040: aload_3
    //   3041: astore_2
    //   3042: aload 34
    //   3044: iload 36
    //   3046: i2l
    //   3047: invokevirtual 254	org/apache/cordova/FileProgressResult:setTotal	(J)V
    //   3050: aload 6
    //   3052: astore 15
    //   3054: aload 4
    //   3056: astore 7
    //   3058: aload_3
    //   3059: astore 8
    //   3061: aload 6
    //   3063: astore 16
    //   3065: iload 36
    //   3067: istore 37
    //   3069: aload 4
    //   3071: astore 9
    //   3073: aload_3
    //   3074: astore 10
    //   3076: iload 40
    //   3078: istore 38
    //   3080: aload 6
    //   3082: astore 18
    //   3084: aload 4
    //   3086: astore 13
    //   3088: aload_3
    //   3089: astore 14
    //   3091: aload 6
    //   3093: astore 17
    //   3095: aload 4
    //   3097: astore 11
    //   3099: aload_3
    //   3100: astore 12
    //   3102: aload 6
    //   3104: astore 5
    //   3106: aload 4
    //   3108: astore_1
    //   3109: aload_3
    //   3110: astore_2
    //   3111: ldc -43
    //   3113: new 160	java/lang/StringBuilder
    //   3116: dup
    //   3117: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   3120: ldc_w 256
    //   3123: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   3126: iload 36
    //   3128: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   3131: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   3134: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   3137: pop
    //   3138: aload 6
    //   3140: astore 15
    //   3142: aload 4
    //   3144: astore 7
    //   3146: aload_3
    //   3147: astore 8
    //   3149: aload 6
    //   3151: astore 16
    //   3153: iload 36
    //   3155: istore 37
    //   3157: aload 4
    //   3159: astore 9
    //   3161: aload_3
    //   3162: astore 10
    //   3164: iload 40
    //   3166: istore 38
    //   3168: aload 6
    //   3170: astore 18
    //   3172: aload 4
    //   3174: astore 13
    //   3176: aload_3
    //   3177: astore 14
    //   3179: aload 6
    //   3181: astore 17
    //   3183: aload 4
    //   3185: astore 11
    //   3187: aload_3
    //   3188: astore 12
    //   3190: aload 6
    //   3192: astore 5
    //   3194: aload 4
    //   3196: astore_1
    //   3197: aload_3
    //   3198: astore_2
    //   3199: aload_0
    //   3200: getfield 67	org/apache/cordova/FileTransfer$1:val$chunkedMode	Z
    //   3203: ifeq +595 -> 3798
    //   3206: aload 6
    //   3208: astore 15
    //   3210: aload 4
    //   3212: astore 7
    //   3214: aload_3
    //   3215: astore 8
    //   3217: aload 6
    //   3219: astore 16
    //   3221: iload 36
    //   3223: istore 37
    //   3225: aload 4
    //   3227: astore 9
    //   3229: aload_3
    //   3230: astore 10
    //   3232: iload 40
    //   3234: istore 38
    //   3236: aload 6
    //   3238: astore 18
    //   3240: aload 4
    //   3242: astore 13
    //   3244: aload_3
    //   3245: astore 14
    //   3247: aload 6
    //   3249: astore 17
    //   3251: aload 4
    //   3253: astore 11
    //   3255: aload_3
    //   3256: astore 12
    //   3258: aload 6
    //   3260: astore 5
    //   3262: aload 4
    //   3264: astore_1
    //   3265: aload_3
    //   3266: astore_2
    //   3267: getstatic 269	android/os/Build$VERSION:SDK_INT	I
    //   3270: bipush 8
    //   3272: if_icmplt +3526 -> 6798
    //   3275: aload 6
    //   3277: astore 15
    //   3279: aload 4
    //   3281: astore 7
    //   3283: aload_3
    //   3284: astore 8
    //   3286: aload 6
    //   3288: astore 16
    //   3290: iload 36
    //   3292: istore 37
    //   3294: aload 4
    //   3296: astore 9
    //   3298: aload_3
    //   3299: astore 10
    //   3301: iload 40
    //   3303: istore 38
    //   3305: aload 6
    //   3307: astore 18
    //   3309: aload 4
    //   3311: astore 13
    //   3313: aload_3
    //   3314: astore 14
    //   3316: aload 6
    //   3318: astore 17
    //   3320: aload 4
    //   3322: astore 11
    //   3324: aload_3
    //   3325: astore 12
    //   3327: aload 6
    //   3329: astore 5
    //   3331: aload 4
    //   3333: astore_1
    //   3334: aload_3
    //   3335: astore_2
    //   3336: aload_0
    //   3337: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   3340: ifeq +458 -> 3798
    //   3343: goto +3455 -> 6798
    //   3346: iload 35
    //   3348: ifeq +462 -> 3810
    //   3351: aload 6
    //   3353: astore 15
    //   3355: aload 4
    //   3357: astore 7
    //   3359: aload_3
    //   3360: astore 8
    //   3362: aload 6
    //   3364: astore 16
    //   3366: iload 36
    //   3368: istore 37
    //   3370: aload 4
    //   3372: astore 9
    //   3374: aload_3
    //   3375: astore 10
    //   3377: iload 40
    //   3379: istore 38
    //   3381: aload 6
    //   3383: astore 18
    //   3385: aload 4
    //   3387: astore 13
    //   3389: aload_3
    //   3390: astore 14
    //   3392: aload 6
    //   3394: astore 17
    //   3396: aload 4
    //   3398: astore 11
    //   3400: aload_3
    //   3401: astore 12
    //   3403: aload 6
    //   3405: astore 5
    //   3407: aload 4
    //   3409: astore_1
    //   3410: aload_3
    //   3411: astore_2
    //   3412: aload 6
    //   3414: sipush 16384
    //   3417: invokevirtual 273	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
    //   3420: aload 6
    //   3422: astore 15
    //   3424: aload 4
    //   3426: astore 7
    //   3428: aload_3
    //   3429: astore 8
    //   3431: aload 6
    //   3433: astore 16
    //   3435: iload 36
    //   3437: istore 37
    //   3439: aload 4
    //   3441: astore 9
    //   3443: aload_3
    //   3444: astore 10
    //   3446: iload 40
    //   3448: istore 38
    //   3450: aload 6
    //   3452: astore 18
    //   3454: aload 4
    //   3456: astore 13
    //   3458: aload_3
    //   3459: astore 14
    //   3461: aload 6
    //   3463: astore 17
    //   3465: aload 4
    //   3467: astore 11
    //   3469: aload_3
    //   3470: astore 12
    //   3472: aload 6
    //   3474: astore 5
    //   3476: aload 4
    //   3478: astore_1
    //   3479: aload_3
    //   3480: astore_2
    //   3481: aload 6
    //   3483: ldc_w 275
    //   3486: ldc_w 277
    //   3489: invokevirtual 142	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   3492: aload 6
    //   3494: astore 15
    //   3496: aload 4
    //   3498: astore 7
    //   3500: aload_3
    //   3501: astore 8
    //   3503: aload 6
    //   3505: astore 16
    //   3507: iload 36
    //   3509: istore 37
    //   3511: aload 4
    //   3513: astore 9
    //   3515: aload_3
    //   3516: astore 10
    //   3518: iload 40
    //   3520: istore 38
    //   3522: aload 6
    //   3524: astore 18
    //   3526: aload 4
    //   3528: astore 13
    //   3530: aload_3
    //   3531: astore 14
    //   3533: aload 6
    //   3535: astore 17
    //   3537: aload 4
    //   3539: astore 11
    //   3541: aload_3
    //   3542: astore 12
    //   3544: aload 6
    //   3546: astore 5
    //   3548: aload 4
    //   3550: astore_1
    //   3551: aload_3
    //   3552: astore_2
    //   3553: aload 6
    //   3555: invokevirtual 280	java/net/HttpURLConnection:connect	()V
    //   3558: aconst_null
    //   3559: astore 19
    //   3561: iload 39
    //   3563: istore 35
    //   3565: aload 6
    //   3567: invokevirtual 284	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   3570: astore 20
    //   3572: aload 20
    //   3574: astore 19
    //   3576: iload 39
    //   3578: istore 35
    //   3580: aload_0
    //   3581: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   3584: astore_1
    //   3585: aload 20
    //   3587: astore 19
    //   3589: iload 39
    //   3591: istore 35
    //   3593: aload_1
    //   3594: monitorenter
    //   3595: aload_0
    //   3596: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   3599: getfield 89	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
    //   3602: ifeq +421 -> 4023
    //   3605: aload_1
    //   3606: monitorexit
    //   3607: aload 6
    //   3609: astore 15
    //   3611: aload 4
    //   3613: astore 7
    //   3615: aload_3
    //   3616: astore 8
    //   3618: aload 6
    //   3620: astore 16
    //   3622: iload 36
    //   3624: istore 37
    //   3626: aload 4
    //   3628: astore 9
    //   3630: aload_3
    //   3631: astore 10
    //   3633: iload 40
    //   3635: istore 38
    //   3637: aload 6
    //   3639: astore 18
    //   3641: aload 4
    //   3643: astore 13
    //   3645: aload_3
    //   3646: astore 14
    //   3648: aload 6
    //   3650: astore 17
    //   3652: aload 4
    //   3654: astore 11
    //   3656: aload_3
    //   3657: astore 12
    //   3659: aload 6
    //   3661: astore 5
    //   3663: aload 4
    //   3665: astore_1
    //   3666: aload_3
    //   3667: astore_2
    //   3668: aload 21
    //   3670: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   3673: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   3676: aload 6
    //   3678: astore 15
    //   3680: aload 4
    //   3682: astore 7
    //   3684: aload_3
    //   3685: astore 8
    //   3687: aload 6
    //   3689: astore 16
    //   3691: iload 36
    //   3693: istore 37
    //   3695: aload 4
    //   3697: astore 9
    //   3699: aload_3
    //   3700: astore 10
    //   3702: iload 40
    //   3704: istore 38
    //   3706: aload 6
    //   3708: astore 18
    //   3710: aload 4
    //   3712: astore 13
    //   3714: aload_3
    //   3715: astore 14
    //   3717: aload 6
    //   3719: astore 17
    //   3721: aload 4
    //   3723: astore 11
    //   3725: aload_3
    //   3726: astore 12
    //   3728: aload 6
    //   3730: astore 5
    //   3732: aload 4
    //   3734: astore_1
    //   3735: aload_3
    //   3736: astore_2
    //   3737: aload 20
    //   3739: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   3742: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   3745: astore_1
    //   3746: aload_1
    //   3747: monitorenter
    //   3748: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   3751: aload_0
    //   3752: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   3755: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   3758: pop
    //   3759: aload_1
    //   3760: monitorexit
    //   3761: aload 6
    //   3763: ifnull -3753 -> 10
    //   3766: aload_0
    //   3767: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   3770: ifeq -3760 -> 10
    //   3773: aload_0
    //   3774: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   3777: ifeq -3767 -> 10
    //   3780: aload 6
    //   3782: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   3785: astore_1
    //   3786: aload_1
    //   3787: aload 4
    //   3789: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   3792: aload_1
    //   3793: aload_3
    //   3794: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   3797: return
    //   3798: iconst_0
    //   3799: istore 35
    //   3801: goto +3000 -> 6801
    //   3804: iconst_0
    //   3805: istore 35
    //   3807: goto -461 -> 3346
    //   3810: aload 6
    //   3812: astore 15
    //   3814: aload 4
    //   3816: astore 7
    //   3818: aload_3
    //   3819: astore 8
    //   3821: aload 6
    //   3823: astore 16
    //   3825: iload 36
    //   3827: istore 37
    //   3829: aload 4
    //   3831: astore 9
    //   3833: aload_3
    //   3834: astore 10
    //   3836: iload 40
    //   3838: istore 38
    //   3840: aload 6
    //   3842: astore 18
    //   3844: aload 4
    //   3846: astore 13
    //   3848: aload_3
    //   3849: astore 14
    //   3851: aload 6
    //   3853: astore 17
    //   3855: aload 4
    //   3857: astore 11
    //   3859: aload_3
    //   3860: astore 12
    //   3862: aload 6
    //   3864: astore 5
    //   3866: aload 4
    //   3868: astore_1
    //   3869: aload_3
    //   3870: astore_2
    //   3871: aload 6
    //   3873: iload 36
    //   3875: invokevirtual 309	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   3878: goto -386 -> 3492
    //   3881: astore_3
    //   3882: aload 15
    //   3884: astore 5
    //   3886: aload 7
    //   3888: astore_1
    //   3889: aload 8
    //   3891: astore_2
    //   3892: getstatic 312	org/apache/cordova/FileTransfer:FILE_NOT_FOUND_ERR	I
    //   3895: aload_0
    //   3896: getfield 69	org/apache/cordova/FileTransfer$1:val$source	Ljava/lang/String;
    //   3899: aload_0
    //   3900: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
    //   3903: aload 15
    //   3905: invokestatic 316	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   3908: astore 4
    //   3910: aload 15
    //   3912: astore 5
    //   3914: aload 7
    //   3916: astore_1
    //   3917: aload 8
    //   3919: astore_2
    //   3920: ldc -43
    //   3922: aload 4
    //   3924: invokevirtual 317	org/json/JSONObject:toString	()Ljava/lang/String;
    //   3927: aload_3
    //   3928: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   3931: pop
    //   3932: aload 15
    //   3934: astore 5
    //   3936: aload 7
    //   3938: astore_1
    //   3939: aload 8
    //   3941: astore_2
    //   3942: aload_0
    //   3943: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   3946: new 319	org/apache/cordova/api/PluginResult
    //   3949: dup
    //   3950: getstatic 325	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   3953: aload 4
    //   3955: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   3958: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   3961: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   3964: astore_1
    //   3965: aload_1
    //   3966: monitorenter
    //   3967: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   3970: aload_0
    //   3971: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   3974: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   3977: pop
    //   3978: aload_1
    //   3979: monitorexit
    //   3980: aload 15
    //   3982: ifnull -3972 -> 10
    //   3985: aload_0
    //   3986: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   3989: ifeq -3979 -> 10
    //   3992: aload_0
    //   3993: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   3996: ifeq -3986 -> 10
    //   3999: aload 15
    //   4001: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   4004: astore_1
    //   4005: aload_1
    //   4006: aload 7
    //   4008: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   4011: aload_1
    //   4012: aload 8
    //   4014: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   4017: return
    //   4018: astore_2
    //   4019: aload_1
    //   4020: monitorexit
    //   4021: aload_2
    //   4022: athrow
    //   4023: aload_0
    //   4024: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4027: aload 20
    //   4029: putfield 336	org/apache/cordova/FileTransfer$RequestContext:currentOutputStream	Ljava/io/OutputStream;
    //   4032: aload_1
    //   4033: monitorexit
    //   4034: aload 20
    //   4036: astore 19
    //   4038: iload 39
    //   4040: istore 35
    //   4042: aload 20
    //   4044: aload 23
    //   4046: invokevirtual 342	java/io/OutputStream:write	([B)V
    //   4049: aload 20
    //   4051: astore 19
    //   4053: iload 39
    //   4055: istore 35
    //   4057: iconst_0
    //   4058: aload 23
    //   4060: arraylength
    //   4061: iadd
    //   4062: istore 37
    //   4064: aload 20
    //   4066: astore 19
    //   4068: iload 37
    //   4070: istore 35
    //   4072: aload 21
    //   4074: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   4077: invokevirtual 348	java/io/InputStream:available	()I
    //   4080: sipush 16384
    //   4083: invokestatic 354	java/lang/Math:min	(II)I
    //   4086: istore 38
    //   4088: aload 20
    //   4090: astore 19
    //   4092: iload 37
    //   4094: istore 35
    //   4096: iload 38
    //   4098: newarray <illegal type>
    //   4100: astore_1
    //   4101: aload 20
    //   4103: astore 19
    //   4105: iload 37
    //   4107: istore 35
    //   4109: aload 21
    //   4111: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   4114: aload_1
    //   4115: iconst_0
    //   4116: iload 38
    //   4118: invokevirtual 358	java/io/InputStream:read	([BII)I
    //   4121: istore 38
    //   4123: lconst_0
    //   4124: lstore 43
    //   4126: iload 38
    //   4128: ifle +644 -> 4772
    //   4131: aload 20
    //   4133: astore 19
    //   4135: iload 37
    //   4137: istore 35
    //   4139: aload 33
    //   4141: iload 37
    //   4143: i2l
    //   4144: invokevirtual 361	org/apache/cordova/FileUploadResult:setBytesSent	(J)V
    //   4147: aload 20
    //   4149: astore 19
    //   4151: iload 37
    //   4153: istore 35
    //   4155: aload 20
    //   4157: aload_1
    //   4158: iconst_0
    //   4159: iload 38
    //   4161: invokevirtual 364	java/io/OutputStream:write	([BII)V
    //   4164: iload 37
    //   4166: iload 38
    //   4168: iadd
    //   4169: istore 37
    //   4171: lload 43
    //   4173: lstore 45
    //   4175: iload 37
    //   4177: i2l
    //   4178: ldc2_w 365
    //   4181: lload 43
    //   4183: ladd
    //   4184: lcmp
    //   4185: ifle +60 -> 4245
    //   4188: iload 37
    //   4190: i2l
    //   4191: lstore 45
    //   4193: aload 20
    //   4195: astore 19
    //   4197: iload 37
    //   4199: istore 35
    //   4201: ldc -43
    //   4203: new 160	java/lang/StringBuilder
    //   4206: dup
    //   4207: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   4210: ldc_w 368
    //   4213: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4216: iload 37
    //   4218: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   4221: ldc_w 370
    //   4224: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4227: iload 36
    //   4229: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   4232: ldc_w 372
    //   4235: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4238: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4241: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   4244: pop
    //   4245: aload 20
    //   4247: astore 19
    //   4249: iload 37
    //   4251: istore 35
    //   4253: aload 21
    //   4255: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   4258: invokevirtual 348	java/io/InputStream:available	()I
    //   4261: sipush 16384
    //   4264: invokestatic 354	java/lang/Math:min	(II)I
    //   4267: istore 38
    //   4269: aload 20
    //   4271: astore 19
    //   4273: iload 37
    //   4275: istore 35
    //   4277: aload 21
    //   4279: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   4282: aload_1
    //   4283: iconst_0
    //   4284: iload 38
    //   4286: invokevirtual 358	java/io/InputStream:read	([BII)I
    //   4289: istore 38
    //   4291: aload 20
    //   4293: astore 19
    //   4295: iload 37
    //   4297: istore 35
    //   4299: aload 34
    //   4301: iload 37
    //   4303: i2l
    //   4304: invokevirtual 375	org/apache/cordova/FileProgressResult:setLoaded	(J)V
    //   4307: aload 20
    //   4309: astore 19
    //   4311: iload 37
    //   4313: istore 35
    //   4315: new 319	org/apache/cordova/api/PluginResult
    //   4318: dup
    //   4319: getstatic 378	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   4322: aload 34
    //   4324: invokevirtual 382	org/apache/cordova/FileProgressResult:toJSONObject	()Lorg/json/JSONObject;
    //   4327: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   4330: astore_2
    //   4331: aload 20
    //   4333: astore 19
    //   4335: iload 37
    //   4337: istore 35
    //   4339: aload_2
    //   4340: iconst_1
    //   4341: invokevirtual 385	org/apache/cordova/api/PluginResult:setKeepCallback	(Z)V
    //   4344: aload 20
    //   4346: astore 19
    //   4348: iload 37
    //   4350: istore 35
    //   4352: aload_0
    //   4353: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4356: aload_2
    //   4357: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   4360: lload 45
    //   4362: lstore 43
    //   4364: goto -238 -> 4126
    //   4367: astore 20
    //   4369: aload 6
    //   4371: astore 15
    //   4373: aload 4
    //   4375: astore 7
    //   4377: aload_3
    //   4378: astore 8
    //   4380: aload 6
    //   4382: astore 16
    //   4384: iload 36
    //   4386: istore 37
    //   4388: aload 4
    //   4390: astore 9
    //   4392: aload_3
    //   4393: astore 10
    //   4395: iload 35
    //   4397: istore 38
    //   4399: aload 6
    //   4401: astore 18
    //   4403: aload 4
    //   4405: astore 13
    //   4407: aload_3
    //   4408: astore 14
    //   4410: aload 6
    //   4412: astore 17
    //   4414: aload 4
    //   4416: astore 11
    //   4418: aload_3
    //   4419: astore 12
    //   4421: aload 6
    //   4423: astore 5
    //   4425: aload 4
    //   4427: astore_1
    //   4428: aload_3
    //   4429: astore_2
    //   4430: aload 21
    //   4432: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   4435: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4438: aload 6
    //   4440: astore 15
    //   4442: aload 4
    //   4444: astore 7
    //   4446: aload_3
    //   4447: astore 8
    //   4449: aload 6
    //   4451: astore 16
    //   4453: iload 36
    //   4455: istore 37
    //   4457: aload 4
    //   4459: astore 9
    //   4461: aload_3
    //   4462: astore 10
    //   4464: iload 35
    //   4466: istore 38
    //   4468: aload 6
    //   4470: astore 18
    //   4472: aload 4
    //   4474: astore 13
    //   4476: aload_3
    //   4477: astore 14
    //   4479: aload 6
    //   4481: astore 17
    //   4483: aload 4
    //   4485: astore 11
    //   4487: aload_3
    //   4488: astore 12
    //   4490: aload 6
    //   4492: astore 5
    //   4494: aload 4
    //   4496: astore_1
    //   4497: aload_3
    //   4498: astore_2
    //   4499: aload 19
    //   4501: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4504: aload 6
    //   4506: astore 15
    //   4508: aload 4
    //   4510: astore 7
    //   4512: aload_3
    //   4513: astore 8
    //   4515: aload 6
    //   4517: astore 16
    //   4519: iload 36
    //   4521: istore 37
    //   4523: aload 4
    //   4525: astore 9
    //   4527: aload_3
    //   4528: astore 10
    //   4530: iload 35
    //   4532: istore 38
    //   4534: aload 6
    //   4536: astore 18
    //   4538: aload 4
    //   4540: astore 13
    //   4542: aload_3
    //   4543: astore 14
    //   4545: aload 6
    //   4547: astore 17
    //   4549: aload 4
    //   4551: astore 11
    //   4553: aload_3
    //   4554: astore 12
    //   4556: aload 6
    //   4558: astore 5
    //   4560: aload 4
    //   4562: astore_1
    //   4563: aload_3
    //   4564: astore_2
    //   4565: aload 20
    //   4567: athrow
    //   4568: astore_3
    //   4569: aload 16
    //   4571: astore 5
    //   4573: aload 9
    //   4575: astore_1
    //   4576: aload 10
    //   4578: astore_2
    //   4579: getstatic 388	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   4582: aload_0
    //   4583: getfield 69	org/apache/cordova/FileTransfer$1:val$source	Ljava/lang/String;
    //   4586: aload_0
    //   4587: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
    //   4590: aload 16
    //   4592: invokestatic 316	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   4595: astore 4
    //   4597: aload 16
    //   4599: astore 5
    //   4601: aload 9
    //   4603: astore_1
    //   4604: aload 10
    //   4606: astore_2
    //   4607: ldc -43
    //   4609: aload 4
    //   4611: invokevirtual 317	org/json/JSONObject:toString	()Ljava/lang/String;
    //   4614: aload_3
    //   4615: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   4618: pop
    //   4619: aload 16
    //   4621: astore 5
    //   4623: aload 9
    //   4625: astore_1
    //   4626: aload 10
    //   4628: astore_2
    //   4629: ldc -43
    //   4631: new 160	java/lang/StringBuilder
    //   4634: dup
    //   4635: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   4638: ldc_w 390
    //   4641: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4644: iload 38
    //   4646: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   4649: ldc_w 370
    //   4652: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4655: iload 37
    //   4657: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   4660: ldc_w 392
    //   4663: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4666: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4669: invokestatic 394	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   4672: pop
    //   4673: aload 16
    //   4675: astore 5
    //   4677: aload 9
    //   4679: astore_1
    //   4680: aload 10
    //   4682: astore_2
    //   4683: aload_0
    //   4684: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4687: new 319	org/apache/cordova/api/PluginResult
    //   4690: dup
    //   4691: getstatic 325	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   4694: aload 4
    //   4696: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   4699: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   4702: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   4705: astore_1
    //   4706: aload_1
    //   4707: monitorenter
    //   4708: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   4711: aload_0
    //   4712: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   4715: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4718: pop
    //   4719: aload_1
    //   4720: monitorexit
    //   4721: aload 16
    //   4723: ifnull -4713 -> 10
    //   4726: aload_0
    //   4727: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   4730: ifeq -4720 -> 10
    //   4733: aload_0
    //   4734: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   4737: ifeq -4727 -> 10
    //   4740: aload 16
    //   4742: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   4745: astore_1
    //   4746: aload_1
    //   4747: aload 9
    //   4749: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   4752: aload_1
    //   4753: aload 10
    //   4755: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   4758: return
    //   4759: astore_2
    //   4760: aload_1
    //   4761: monitorexit
    //   4762: aload 20
    //   4764: astore 19
    //   4766: iload 39
    //   4768: istore 35
    //   4770: aload_2
    //   4771: athrow
    //   4772: aload 20
    //   4774: astore 19
    //   4776: iload 37
    //   4778: istore 35
    //   4780: aload 20
    //   4782: aload 22
    //   4784: invokevirtual 342	java/io/OutputStream:write	([B)V
    //   4787: aload 20
    //   4789: astore 19
    //   4791: iload 37
    //   4793: istore 35
    //   4795: iload 37
    //   4797: aload 22
    //   4799: arraylength
    //   4800: iadd
    //   4801: istore 39
    //   4803: aload 20
    //   4805: astore 19
    //   4807: iload 39
    //   4809: istore 35
    //   4811: aload 20
    //   4813: invokevirtual 397	java/io/OutputStream:flush	()V
    //   4816: aload 6
    //   4818: astore 15
    //   4820: aload 4
    //   4822: astore 7
    //   4824: aload_3
    //   4825: astore 8
    //   4827: aload 6
    //   4829: astore 16
    //   4831: iload 36
    //   4833: istore 37
    //   4835: aload 4
    //   4837: astore 9
    //   4839: aload_3
    //   4840: astore 10
    //   4842: iload 39
    //   4844: istore 38
    //   4846: aload 6
    //   4848: astore 18
    //   4850: aload 4
    //   4852: astore 13
    //   4854: aload_3
    //   4855: astore 14
    //   4857: aload 6
    //   4859: astore 17
    //   4861: aload 4
    //   4863: astore 11
    //   4865: aload_3
    //   4866: astore 12
    //   4868: aload 6
    //   4870: astore 5
    //   4872: aload 4
    //   4874: astore_1
    //   4875: aload_3
    //   4876: astore_2
    //   4877: aload 21
    //   4879: getfield 288	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   4882: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4885: aload 6
    //   4887: astore 15
    //   4889: aload 4
    //   4891: astore 7
    //   4893: aload_3
    //   4894: astore 8
    //   4896: aload 6
    //   4898: astore 16
    //   4900: iload 36
    //   4902: istore 37
    //   4904: aload 4
    //   4906: astore 9
    //   4908: aload_3
    //   4909: astore 10
    //   4911: iload 39
    //   4913: istore 38
    //   4915: aload 6
    //   4917: astore 18
    //   4919: aload 4
    //   4921: astore 13
    //   4923: aload_3
    //   4924: astore 14
    //   4926: aload 6
    //   4928: astore 17
    //   4930: aload 4
    //   4932: astore 11
    //   4934: aload_3
    //   4935: astore 12
    //   4937: aload 6
    //   4939: astore 5
    //   4941: aload 4
    //   4943: astore_1
    //   4944: aload_3
    //   4945: astore_2
    //   4946: aload 20
    //   4948: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4951: aload 6
    //   4953: astore 15
    //   4955: aload 4
    //   4957: astore 7
    //   4959: aload_3
    //   4960: astore 8
    //   4962: aload 6
    //   4964: astore 16
    //   4966: iload 36
    //   4968: istore 37
    //   4970: aload 4
    //   4972: astore 9
    //   4974: aload_3
    //   4975: astore 10
    //   4977: iload 39
    //   4979: istore 38
    //   4981: aload 6
    //   4983: astore 18
    //   4985: aload 4
    //   4987: astore 13
    //   4989: aload_3
    //   4990: astore 14
    //   4992: aload 6
    //   4994: astore 17
    //   4996: aload 4
    //   4998: astore 11
    //   5000: aload_3
    //   5001: astore 12
    //   5003: aload 6
    //   5005: astore 5
    //   5007: aload 4
    //   5009: astore_1
    //   5010: aload_3
    //   5011: astore_2
    //   5012: aload_0
    //   5013: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5016: aconst_null
    //   5017: putfield 336	org/apache/cordova/FileTransfer$RequestContext:currentOutputStream	Ljava/io/OutputStream;
    //   5020: aload 6
    //   5022: astore 15
    //   5024: aload 4
    //   5026: astore 7
    //   5028: aload_3
    //   5029: astore 8
    //   5031: aload 6
    //   5033: astore 16
    //   5035: iload 36
    //   5037: istore 37
    //   5039: aload 4
    //   5041: astore 9
    //   5043: aload_3
    //   5044: astore 10
    //   5046: iload 39
    //   5048: istore 38
    //   5050: aload 6
    //   5052: astore 18
    //   5054: aload 4
    //   5056: astore 13
    //   5058: aload_3
    //   5059: astore 14
    //   5061: aload 6
    //   5063: astore 17
    //   5065: aload 4
    //   5067: astore 11
    //   5069: aload_3
    //   5070: astore 12
    //   5072: aload 6
    //   5074: astore 5
    //   5076: aload 4
    //   5078: astore_1
    //   5079: aload_3
    //   5080: astore_2
    //   5081: ldc -43
    //   5083: new 160	java/lang/StringBuilder
    //   5086: dup
    //   5087: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   5090: ldc_w 399
    //   5093: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   5096: iload 39
    //   5098: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   5101: ldc_w 370
    //   5104: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   5107: iload 36
    //   5109: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   5112: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   5115: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   5118: pop
    //   5119: aload 6
    //   5121: astore 15
    //   5123: aload 4
    //   5125: astore 7
    //   5127: aload_3
    //   5128: astore 8
    //   5130: aload 6
    //   5132: astore 16
    //   5134: iload 36
    //   5136: istore 37
    //   5138: aload 4
    //   5140: astore 9
    //   5142: aload_3
    //   5143: astore 10
    //   5145: iload 39
    //   5147: istore 38
    //   5149: aload 6
    //   5151: astore 18
    //   5153: aload 4
    //   5155: astore 13
    //   5157: aload_3
    //   5158: astore 14
    //   5160: aload 6
    //   5162: astore 17
    //   5164: aload 4
    //   5166: astore 11
    //   5168: aload_3
    //   5169: astore 12
    //   5171: aload 6
    //   5173: astore 5
    //   5175: aload 4
    //   5177: astore_1
    //   5178: aload_3
    //   5179: astore_2
    //   5180: aload 6
    //   5182: invokevirtual 402	java/net/HttpURLConnection:getResponseCode	()I
    //   5185: istore 35
    //   5187: aload 6
    //   5189: astore 15
    //   5191: aload 4
    //   5193: astore 7
    //   5195: aload_3
    //   5196: astore 8
    //   5198: aload 6
    //   5200: astore 16
    //   5202: iload 36
    //   5204: istore 37
    //   5206: aload 4
    //   5208: astore 9
    //   5210: aload_3
    //   5211: astore 10
    //   5213: iload 39
    //   5215: istore 38
    //   5217: aload 6
    //   5219: astore 18
    //   5221: aload 4
    //   5223: astore 13
    //   5225: aload_3
    //   5226: astore 14
    //   5228: aload 6
    //   5230: astore 17
    //   5232: aload 4
    //   5234: astore 11
    //   5236: aload_3
    //   5237: astore 12
    //   5239: aload 6
    //   5241: astore 5
    //   5243: aload 4
    //   5245: astore_1
    //   5246: aload_3
    //   5247: astore_2
    //   5248: ldc -43
    //   5250: new 160	java/lang/StringBuilder
    //   5253: dup
    //   5254: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   5257: ldc_w 404
    //   5260: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   5263: iload 35
    //   5265: invokevirtual 259	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   5268: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   5271: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   5274: pop
    //   5275: aload 6
    //   5277: astore 15
    //   5279: aload 4
    //   5281: astore 7
    //   5283: aload_3
    //   5284: astore 8
    //   5286: aload 6
    //   5288: astore 16
    //   5290: iload 36
    //   5292: istore 37
    //   5294: aload 4
    //   5296: astore 9
    //   5298: aload_3
    //   5299: astore 10
    //   5301: iload 39
    //   5303: istore 38
    //   5305: aload 6
    //   5307: astore 18
    //   5309: aload 4
    //   5311: astore 13
    //   5313: aload_3
    //   5314: astore 14
    //   5316: aload 6
    //   5318: astore 17
    //   5320: aload 4
    //   5322: astore 11
    //   5324: aload_3
    //   5325: astore 12
    //   5327: aload 6
    //   5329: astore 5
    //   5331: aload 4
    //   5333: astore_1
    //   5334: aload_3
    //   5335: astore_2
    //   5336: ldc -43
    //   5338: new 160	java/lang/StringBuilder
    //   5341: dup
    //   5342: invokespecial 161	java/lang/StringBuilder:<init>	()V
    //   5345: ldc_w 406
    //   5348: invokevirtual 195	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   5351: aload 6
    //   5353: invokevirtual 410	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   5356: invokevirtual 413	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   5359: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   5362: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   5365: pop
    //   5366: aconst_null
    //   5367: astore 19
    //   5369: aload 6
    //   5371: invokestatic 417	org/apache/cordova/FileTransfer:access$400	(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    //   5374: astore 20
    //   5376: aload 20
    //   5378: astore 19
    //   5380: aload_0
    //   5381: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5384: astore_1
    //   5385: aload 20
    //   5387: astore 19
    //   5389: aload_1
    //   5390: monitorenter
    //   5391: aload_0
    //   5392: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5395: getfield 89	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
    //   5398: ifeq +201 -> 5599
    //   5401: aload_1
    //   5402: monitorexit
    //   5403: aload 6
    //   5405: astore 15
    //   5407: aload 4
    //   5409: astore 7
    //   5411: aload_3
    //   5412: astore 8
    //   5414: aload 6
    //   5416: astore 16
    //   5418: iload 36
    //   5420: istore 37
    //   5422: aload 4
    //   5424: astore 9
    //   5426: aload_3
    //   5427: astore 10
    //   5429: iload 39
    //   5431: istore 38
    //   5433: aload 6
    //   5435: astore 18
    //   5437: aload 4
    //   5439: astore 13
    //   5441: aload_3
    //   5442: astore 14
    //   5444: aload 6
    //   5446: astore 17
    //   5448: aload 4
    //   5450: astore 11
    //   5452: aload_3
    //   5453: astore 12
    //   5455: aload 6
    //   5457: astore 5
    //   5459: aload 4
    //   5461: astore_1
    //   5462: aload_3
    //   5463: astore_2
    //   5464: aload_0
    //   5465: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5468: aconst_null
    //   5469: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   5472: aload 6
    //   5474: astore 15
    //   5476: aload 4
    //   5478: astore 7
    //   5480: aload_3
    //   5481: astore 8
    //   5483: aload 6
    //   5485: astore 16
    //   5487: iload 36
    //   5489: istore 37
    //   5491: aload 4
    //   5493: astore 9
    //   5495: aload_3
    //   5496: astore 10
    //   5498: iload 39
    //   5500: istore 38
    //   5502: aload 6
    //   5504: astore 18
    //   5506: aload 4
    //   5508: astore 13
    //   5510: aload_3
    //   5511: astore 14
    //   5513: aload 6
    //   5515: astore 17
    //   5517: aload 4
    //   5519: astore 11
    //   5521: aload_3
    //   5522: astore 12
    //   5524: aload 6
    //   5526: astore 5
    //   5528: aload 4
    //   5530: astore_1
    //   5531: aload_3
    //   5532: astore_2
    //   5533: aload 20
    //   5535: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5538: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5541: astore_1
    //   5542: aload_1
    //   5543: monitorenter
    //   5544: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5547: aload_0
    //   5548: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   5551: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5554: pop
    //   5555: aload_1
    //   5556: monitorexit
    //   5557: aload 6
    //   5559: ifnull -5549 -> 10
    //   5562: aload_0
    //   5563: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   5566: ifeq -5556 -> 10
    //   5569: aload_0
    //   5570: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   5573: ifeq -5563 -> 10
    //   5576: aload 6
    //   5578: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   5581: astore_1
    //   5582: aload_1
    //   5583: aload 4
    //   5585: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5588: aload_1
    //   5589: aload_3
    //   5590: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5593: return
    //   5594: astore_2
    //   5595: aload_1
    //   5596: monitorexit
    //   5597: aload_2
    //   5598: athrow
    //   5599: aload_0
    //   5600: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5603: aload 20
    //   5605: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   5608: aload_1
    //   5609: monitorexit
    //   5610: aload 20
    //   5612: astore 19
    //   5614: new 422	java/io/ByteArrayOutputStream
    //   5617: dup
    //   5618: sipush 1024
    //   5621: aload 6
    //   5623: invokevirtual 425	java/net/HttpURLConnection:getContentLength	()I
    //   5626: invokestatic 428	java/lang/Math:max	(II)I
    //   5629: invokespecial 430	java/io/ByteArrayOutputStream:<init>	(I)V
    //   5632: astore_1
    //   5633: aload 20
    //   5635: astore 19
    //   5637: sipush 1024
    //   5640: newarray <illegal type>
    //   5642: astore_2
    //   5643: aload 20
    //   5645: astore 19
    //   5647: aload 20
    //   5649: aload_2
    //   5650: invokevirtual 435	org/apache/cordova/FileTransfer$TrackingInputStream:read	([B)I
    //   5653: istore 37
    //   5655: iload 37
    //   5657: ifle +334 -> 5991
    //   5660: aload 20
    //   5662: astore 19
    //   5664: aload_1
    //   5665: aload_2
    //   5666: iconst_0
    //   5667: iload 37
    //   5669: invokevirtual 436	java/io/ByteArrayOutputStream:write	([BII)V
    //   5672: goto -29 -> 5643
    //   5675: astore 20
    //   5677: aload 6
    //   5679: astore 15
    //   5681: aload 4
    //   5683: astore 7
    //   5685: aload_3
    //   5686: astore 8
    //   5688: aload 6
    //   5690: astore 16
    //   5692: iload 36
    //   5694: istore 37
    //   5696: aload 4
    //   5698: astore 9
    //   5700: aload_3
    //   5701: astore 10
    //   5703: iload 39
    //   5705: istore 38
    //   5707: aload 6
    //   5709: astore 18
    //   5711: aload 4
    //   5713: astore 13
    //   5715: aload_3
    //   5716: astore 14
    //   5718: aload 6
    //   5720: astore 17
    //   5722: aload 4
    //   5724: astore 11
    //   5726: aload_3
    //   5727: astore 12
    //   5729: aload 6
    //   5731: astore 5
    //   5733: aload 4
    //   5735: astore_1
    //   5736: aload_3
    //   5737: astore_2
    //   5738: aload_0
    //   5739: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5742: aconst_null
    //   5743: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   5746: aload 6
    //   5748: astore 15
    //   5750: aload 4
    //   5752: astore 7
    //   5754: aload_3
    //   5755: astore 8
    //   5757: aload 6
    //   5759: astore 16
    //   5761: iload 36
    //   5763: istore 37
    //   5765: aload 4
    //   5767: astore 9
    //   5769: aload_3
    //   5770: astore 10
    //   5772: iload 39
    //   5774: istore 38
    //   5776: aload 6
    //   5778: astore 18
    //   5780: aload 4
    //   5782: astore 13
    //   5784: aload_3
    //   5785: astore 14
    //   5787: aload 6
    //   5789: astore 17
    //   5791: aload 4
    //   5793: astore 11
    //   5795: aload_3
    //   5796: astore 12
    //   5798: aload 6
    //   5800: astore 5
    //   5802: aload 4
    //   5804: astore_1
    //   5805: aload_3
    //   5806: astore_2
    //   5807: aload 19
    //   5809: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5812: aload 6
    //   5814: astore 15
    //   5816: aload 4
    //   5818: astore 7
    //   5820: aload_3
    //   5821: astore 8
    //   5823: aload 6
    //   5825: astore 16
    //   5827: iload 36
    //   5829: istore 37
    //   5831: aload 4
    //   5833: astore 9
    //   5835: aload_3
    //   5836: astore 10
    //   5838: iload 39
    //   5840: istore 38
    //   5842: aload 6
    //   5844: astore 18
    //   5846: aload 4
    //   5848: astore 13
    //   5850: aload_3
    //   5851: astore 14
    //   5853: aload 6
    //   5855: astore 17
    //   5857: aload 4
    //   5859: astore 11
    //   5861: aload_3
    //   5862: astore 12
    //   5864: aload 6
    //   5866: astore 5
    //   5868: aload 4
    //   5870: astore_1
    //   5871: aload_3
    //   5872: astore_2
    //   5873: aload 20
    //   5875: athrow
    //   5876: astore_3
    //   5877: aload 18
    //   5879: astore 5
    //   5881: aload 13
    //   5883: astore_1
    //   5884: aload 14
    //   5886: astore_2
    //   5887: ldc -43
    //   5889: aload_3
    //   5890: invokevirtual 216	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   5893: aload_3
    //   5894: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   5897: pop
    //   5898: aload 18
    //   5900: astore 5
    //   5902: aload 13
    //   5904: astore_1
    //   5905: aload 14
    //   5907: astore_2
    //   5908: aload_0
    //   5909: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5912: new 319	org/apache/cordova/api/PluginResult
    //   5915: dup
    //   5916: getstatic 439	org/apache/cordova/api/PluginResult$Status:JSON_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   5919: invokespecial 442	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;)V
    //   5922: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   5925: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5928: astore_1
    //   5929: aload_1
    //   5930: monitorenter
    //   5931: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5934: aload_0
    //   5935: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   5938: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5941: pop
    //   5942: aload_1
    //   5943: monitorexit
    //   5944: aload 18
    //   5946: ifnull -5936 -> 10
    //   5949: aload_0
    //   5950: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   5953: ifeq -5943 -> 10
    //   5956: aload_0
    //   5957: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   5960: ifeq -5950 -> 10
    //   5963: aload 18
    //   5965: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   5968: astore_1
    //   5969: aload_1
    //   5970: aload 13
    //   5972: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5975: aload_1
    //   5976: aload 14
    //   5978: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5981: return
    //   5982: astore_2
    //   5983: aload_1
    //   5984: monitorexit
    //   5985: aload 20
    //   5987: astore 19
    //   5989: aload_2
    //   5990: athrow
    //   5991: aload 20
    //   5993: astore 19
    //   5995: aload_1
    //   5996: ldc -25
    //   5998: invokevirtual 444	java/io/ByteArrayOutputStream:toString	(Ljava/lang/String;)Ljava/lang/String;
    //   6001: astore 21
    //   6003: aload 6
    //   6005: astore 15
    //   6007: aload 4
    //   6009: astore 7
    //   6011: aload_3
    //   6012: astore 8
    //   6014: aload 6
    //   6016: astore 16
    //   6018: iload 36
    //   6020: istore 37
    //   6022: aload 4
    //   6024: astore 9
    //   6026: aload_3
    //   6027: astore 10
    //   6029: iload 39
    //   6031: istore 38
    //   6033: aload 6
    //   6035: astore 18
    //   6037: aload 4
    //   6039: astore 13
    //   6041: aload_3
    //   6042: astore 14
    //   6044: aload 6
    //   6046: astore 17
    //   6048: aload 4
    //   6050: astore 11
    //   6052: aload_3
    //   6053: astore 12
    //   6055: aload 6
    //   6057: astore 5
    //   6059: aload 4
    //   6061: astore_1
    //   6062: aload_3
    //   6063: astore_2
    //   6064: aload_0
    //   6065: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   6068: aconst_null
    //   6069: putfield 420	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   6072: aload 6
    //   6074: astore 15
    //   6076: aload 4
    //   6078: astore 7
    //   6080: aload_3
    //   6081: astore 8
    //   6083: aload 6
    //   6085: astore 16
    //   6087: iload 36
    //   6089: istore 37
    //   6091: aload 4
    //   6093: astore 9
    //   6095: aload_3
    //   6096: astore 10
    //   6098: iload 39
    //   6100: istore 38
    //   6102: aload 6
    //   6104: astore 18
    //   6106: aload 4
    //   6108: astore 13
    //   6110: aload_3
    //   6111: astore 14
    //   6113: aload 6
    //   6115: astore 17
    //   6117: aload 4
    //   6119: astore 11
    //   6121: aload_3
    //   6122: astore 12
    //   6124: aload 6
    //   6126: astore 5
    //   6128: aload 4
    //   6130: astore_1
    //   6131: aload_3
    //   6132: astore_2
    //   6133: aload 20
    //   6135: invokestatic 292	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   6138: aload 6
    //   6140: astore 15
    //   6142: aload 4
    //   6144: astore 7
    //   6146: aload_3
    //   6147: astore 8
    //   6149: aload 6
    //   6151: astore 16
    //   6153: iload 36
    //   6155: istore 37
    //   6157: aload 4
    //   6159: astore 9
    //   6161: aload_3
    //   6162: astore 10
    //   6164: iload 39
    //   6166: istore 38
    //   6168: aload 6
    //   6170: astore 18
    //   6172: aload 4
    //   6174: astore 13
    //   6176: aload_3
    //   6177: astore 14
    //   6179: aload 6
    //   6181: astore 17
    //   6183: aload 4
    //   6185: astore 11
    //   6187: aload_3
    //   6188: astore 12
    //   6190: aload 6
    //   6192: astore 5
    //   6194: aload 4
    //   6196: astore_1
    //   6197: aload_3
    //   6198: astore_2
    //   6199: ldc -43
    //   6201: ldc_w 446
    //   6204: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   6207: pop
    //   6208: aload 6
    //   6210: astore 15
    //   6212: aload 4
    //   6214: astore 7
    //   6216: aload_3
    //   6217: astore 8
    //   6219: aload 6
    //   6221: astore 16
    //   6223: iload 36
    //   6225: istore 37
    //   6227: aload 4
    //   6229: astore 9
    //   6231: aload_3
    //   6232: astore 10
    //   6234: iload 39
    //   6236: istore 38
    //   6238: aload 6
    //   6240: astore 18
    //   6242: aload 4
    //   6244: astore 13
    //   6246: aload_3
    //   6247: astore 14
    //   6249: aload 6
    //   6251: astore 17
    //   6253: aload 4
    //   6255: astore 11
    //   6257: aload_3
    //   6258: astore 12
    //   6260: aload 6
    //   6262: astore 5
    //   6264: aload 4
    //   6266: astore_1
    //   6267: aload_3
    //   6268: astore_2
    //   6269: ldc -43
    //   6271: aload 21
    //   6273: iconst_0
    //   6274: sipush 256
    //   6277: aload 21
    //   6279: invokevirtual 448	java/lang/String:length	()I
    //   6282: invokestatic 354	java/lang/Math:min	(II)I
    //   6285: invokevirtual 452	java/lang/String:substring	(II)Ljava/lang/String;
    //   6288: invokestatic 263	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   6291: pop
    //   6292: aload 6
    //   6294: astore 15
    //   6296: aload 4
    //   6298: astore 7
    //   6300: aload_3
    //   6301: astore 8
    //   6303: aload 6
    //   6305: astore 16
    //   6307: iload 36
    //   6309: istore 37
    //   6311: aload 4
    //   6313: astore 9
    //   6315: aload_3
    //   6316: astore 10
    //   6318: iload 39
    //   6320: istore 38
    //   6322: aload 6
    //   6324: astore 18
    //   6326: aload 4
    //   6328: astore 13
    //   6330: aload_3
    //   6331: astore 14
    //   6333: aload 6
    //   6335: astore 17
    //   6337: aload 4
    //   6339: astore 11
    //   6341: aload_3
    //   6342: astore 12
    //   6344: aload 6
    //   6346: astore 5
    //   6348: aload 4
    //   6350: astore_1
    //   6351: aload_3
    //   6352: astore_2
    //   6353: aload 33
    //   6355: iload 35
    //   6357: invokevirtual 455	org/apache/cordova/FileUploadResult:setResponseCode	(I)V
    //   6360: aload 6
    //   6362: astore 15
    //   6364: aload 4
    //   6366: astore 7
    //   6368: aload_3
    //   6369: astore 8
    //   6371: aload 6
    //   6373: astore 16
    //   6375: iload 36
    //   6377: istore 37
    //   6379: aload 4
    //   6381: astore 9
    //   6383: aload_3
    //   6384: astore 10
    //   6386: iload 39
    //   6388: istore 38
    //   6390: aload 6
    //   6392: astore 18
    //   6394: aload 4
    //   6396: astore 13
    //   6398: aload_3
    //   6399: astore 14
    //   6401: aload 6
    //   6403: astore 17
    //   6405: aload 4
    //   6407: astore 11
    //   6409: aload_3
    //   6410: astore 12
    //   6412: aload 6
    //   6414: astore 5
    //   6416: aload 4
    //   6418: astore_1
    //   6419: aload_3
    //   6420: astore_2
    //   6421: aload 33
    //   6423: aload 21
    //   6425: invokevirtual 458	org/apache/cordova/FileUploadResult:setResponse	(Ljava/lang/String;)V
    //   6428: aload 6
    //   6430: astore 15
    //   6432: aload 4
    //   6434: astore 7
    //   6436: aload_3
    //   6437: astore 8
    //   6439: aload 6
    //   6441: astore 16
    //   6443: iload 36
    //   6445: istore 37
    //   6447: aload 4
    //   6449: astore 9
    //   6451: aload_3
    //   6452: astore 10
    //   6454: iload 39
    //   6456: istore 38
    //   6458: aload 6
    //   6460: astore 18
    //   6462: aload 4
    //   6464: astore 13
    //   6466: aload_3
    //   6467: astore 14
    //   6469: aload 6
    //   6471: astore 17
    //   6473: aload 4
    //   6475: astore 11
    //   6477: aload_3
    //   6478: astore 12
    //   6480: aload 6
    //   6482: astore 5
    //   6484: aload 4
    //   6486: astore_1
    //   6487: aload_3
    //   6488: astore_2
    //   6489: aload_0
    //   6490: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   6493: new 319	org/apache/cordova/api/PluginResult
    //   6496: dup
    //   6497: getstatic 378	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   6500: aload 33
    //   6502: invokevirtual 459	org/apache/cordova/FileUploadResult:toJSONObject	()Lorg/json/JSONObject;
    //   6505: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   6508: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   6511: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   6514: astore_1
    //   6515: aload_1
    //   6516: monitorenter
    //   6517: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   6520: aload_0
    //   6521: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   6524: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   6527: pop
    //   6528: aload_1
    //   6529: monitorexit
    //   6530: aload 6
    //   6532: ifnull -6522 -> 10
    //   6535: aload_0
    //   6536: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   6539: ifeq -6529 -> 10
    //   6542: aload_0
    //   6543: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   6546: ifeq -6536 -> 10
    //   6549: aload 6
    //   6551: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   6554: astore_1
    //   6555: aload_1
    //   6556: aload 4
    //   6558: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   6561: aload_1
    //   6562: aload_3
    //   6563: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   6566: return
    //   6567: astore_2
    //   6568: aload_1
    //   6569: monitorexit
    //   6570: aload_2
    //   6571: athrow
    //   6572: astore_2
    //   6573: aload_1
    //   6574: monitorexit
    //   6575: aload_2
    //   6576: athrow
    //   6577: astore_2
    //   6578: aload_1
    //   6579: monitorexit
    //   6580: aload_2
    //   6581: athrow
    //   6582: astore_2
    //   6583: aload_1
    //   6584: monitorexit
    //   6585: aload_2
    //   6586: athrow
    //   6587: astore_3
    //   6588: aload 17
    //   6590: astore 5
    //   6592: aload 11
    //   6594: astore_1
    //   6595: aload 12
    //   6597: astore_2
    //   6598: getstatic 388	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   6601: aload_0
    //   6602: getfield 69	org/apache/cordova/FileTransfer$1:val$source	Ljava/lang/String;
    //   6605: aload_0
    //   6606: getfield 53	org/apache/cordova/FileTransfer$1:val$target	Ljava/lang/String;
    //   6609: aload 17
    //   6611: invokestatic 316	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   6614: astore 4
    //   6616: aload 17
    //   6618: astore 5
    //   6620: aload 11
    //   6622: astore_1
    //   6623: aload 12
    //   6625: astore_2
    //   6626: ldc -43
    //   6628: aload 4
    //   6630: invokevirtual 317	org/json/JSONObject:toString	()Ljava/lang/String;
    //   6633: aload_3
    //   6634: invokestatic 222	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   6637: pop
    //   6638: aload 17
    //   6640: astore 5
    //   6642: aload 11
    //   6644: astore_1
    //   6645: aload 12
    //   6647: astore_2
    //   6648: aload_0
    //   6649: getfield 41	org/apache/cordova/FileTransfer$1:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   6652: new 319	org/apache/cordova/api/PluginResult
    //   6655: dup
    //   6656: getstatic 325	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   6659: aload 4
    //   6661: invokespecial 328	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   6664: invokevirtual 332	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   6667: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   6670: astore_1
    //   6671: aload_1
    //   6672: monitorenter
    //   6673: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   6676: aload_0
    //   6677: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   6680: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   6683: pop
    //   6684: aload_1
    //   6685: monitorexit
    //   6686: aload 17
    //   6688: ifnull -6678 -> 10
    //   6691: aload_0
    //   6692: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   6695: ifeq -6685 -> 10
    //   6698: aload_0
    //   6699: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   6702: ifeq -6692 -> 10
    //   6705: aload 17
    //   6707: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   6710: astore_1
    //   6711: aload_1
    //   6712: aload 11
    //   6714: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   6717: aload_1
    //   6718: aload 12
    //   6720: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   6723: return
    //   6724: astore_2
    //   6725: aload_1
    //   6726: monitorexit
    //   6727: aload_2
    //   6728: athrow
    //   6729: astore_3
    //   6730: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   6733: astore 4
    //   6735: aload 4
    //   6737: monitorenter
    //   6738: invokestatic 296	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   6741: aload_0
    //   6742: getfield 71	org/apache/cordova/FileTransfer$1:val$objectId	Ljava/lang/String;
    //   6745: invokevirtual 302	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   6748: pop
    //   6749: aload 4
    //   6751: monitorexit
    //   6752: aload 5
    //   6754: ifnull +36 -> 6790
    //   6757: aload_0
    //   6758: getfield 49	org/apache/cordova/FileTransfer$1:val$trustEveryone	Z
    //   6761: ifeq +29 -> 6790
    //   6764: aload_0
    //   6765: getfield 47	org/apache/cordova/FileTransfer$1:val$useHttps	Z
    //   6768: ifeq +22 -> 6790
    //   6771: aload 5
    //   6773: checkcast 103	javax/net/ssl/HttpsURLConnection
    //   6776: astore 4
    //   6778: aload 4
    //   6780: aload_1
    //   6781: invokevirtual 118	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   6784: aload 4
    //   6786: aload_2
    //   6787: invokevirtual 306	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   6790: aload_3
    //   6791: athrow
    //   6792: astore_1
    //   6793: aload 4
    //   6795: monitorexit
    //   6796: aload_1
    //   6797: athrow
    //   6798: iconst_1
    //   6799: istore 35
    //   6801: iload 35
    //   6803: ifne +9 -> 6812
    //   6806: iload 36
    //   6808: iconst_m1
    //   6809: if_icmpne -3005 -> 3804
    //   6812: iconst_1
    //   6813: istore 35
    //   6815: goto -3469 -> 3346
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	6818	0	this	1
    //   6792	5	1	localObject2	Object
    //   134	3808	2	localObject3	Object
    //   4018	4	2	localObject4	Object
    //   4330	353	2	localObject5	Object
    //   4759	12	2	localObject6	Object
    //   4876	657	2	localIOException1	java.io.IOException
    //   5594	4	2	localObject7	Object
    //   5642	266	2	localObject8	Object
    //   5982	8	2	localObject9	Object
    //   6063	426	2	localJSONException1	org.json.JSONException
    //   6567	4	2	localObject10	Object
    //   6572	4	2	localObject11	Object
    //   6577	4	2	localObject12	Object
    //   6582	4	2	localObject13	Object
    //   6597	51	2	localObject14	Object
    //   6724	63	2	localSSLSocketFactory	javax.net.ssl.SSLSocketFactory
    //   24	3846	3	localObject15	Object
    //   3881	683	3	localFileNotFoundException	java.io.FileNotFoundException
    //   4568	1304	3	localIOException2	java.io.IOException
    //   5876	687	3	localJSONException2	org.json.JSONException
    //   6587	47	3	localThrowable	Throwable
    //   6729	62	3	localObject16	Object
    //   127	6645	5	localObject18	Object
    //   15	6535	6	localHttpURLConnection1	java.net.HttpURLConnection
    //   75	6360	7	localObject19	Object
    //   79	6359	8	localObject20	Object
    //   91	6359	9	localObject21	Object
    //   95	6358	10	localObject22	Object
    //   119	6594	11	localObject23	Object
    //   123	6596	12	localObject24	Object
    //   107	6358	13	localObject25	Object
    //   111	6357	14	localObject26	Object
    //   71	6360	15	localObject27	Object
    //   83	6359	16	localObject28	Object
    //   115	6591	17	localObject29	Object
    //   103	6358	18	localHttpURLConnection2	java.net.HttpURLConnection
    //   26	5968	19	localObject30	Object
    //   29	592	20	localObject31	Object
    //   2007	71	20	localJSONException3	org.json.JSONException
    //   3570	775	20	localOutputStream	java.io.OutputStream
    //   4367	580	20	localCloseable1	java.io.Closeable
    //   5374	287	20	localTrackingInputStream	FileTransfer.TrackingInputStream
    //   5675	459	20	localCloseable2	java.io.Closeable
    //   32	6392	21	localObject32	Object
    //   35	4763	22	arrayOfByte1	byte[]
    //   38	4021	23	arrayOfByte2	byte[]
    //   44	494	24	localObject33	Object
    //   47	507	25	localObject34	Object
    //   50	520	26	localObject35	Object
    //   53	529	27	localObject36	Object
    //   56	537	28	localObject37	Object
    //   41	690	29	localHttpsURLConnection	javax.net.ssl.HttpsURLConnection
    //   59	322	30	localObject38	Object
    //   18	244	31	localObject39	Object
    //   21	253	32	localObject40	Object
    //   142	6359	33	localFileUploadResult	FileUploadResult
    //   216	4107	34	localFileProgressResult	FileProgressResult
    //   68	6746	35	i	int
    //   2766	4044	36	j	int
    //   87	6359	37	k	int
    //   99	6358	38	m	int
    //   65	6390	39	n	int
    //   62	3775	40	i1	int
    //   2696	215	41	i2	int
    //   2762	149	42	i3	int
    //   4124	239	43	l1	long
    //   4173	188	45	l2	long
    // Exception table:
    //   from	to	target	type
    //   1485	1494	2007	org/json/JSONException
    //   1544	1554	2007	org/json/JSONException
    //   1604	1613	2007	org/json/JSONException
    //   1663	1676	2007	org/json/JSONException
    //   1726	1744	2007	org/json/JSONException
    //   1794	1815	2007	org/json/JSONException
    //   1865	1878	2007	org/json/JSONException
    //   1928	1946	2007	org/json/JSONException
    //   1996	2004	2007	org/json/JSONException
    //   135	144	3881	java/io/FileNotFoundException
    //   209	218	3881	java/io/FileNotFoundException
    //   283	296	3881	java/io/FileNotFoundException
    //   369	376	3881	java/io/FileNotFoundException
    //   449	456	3881	java/io/FileNotFoundException
    //   522	529	3881	java/io/FileNotFoundException
    //   595	601	3881	java/io/FileNotFoundException
    //   662	669	3881	java/io/FileNotFoundException
    //   730	738	3881	java/io/FileNotFoundException
    //   799	805	3881	java/io/FileNotFoundException
    //   866	872	3881	java/io/FileNotFoundException
    //   933	939	3881	java/io/FileNotFoundException
    //   1000	1009	3881	java/io/FileNotFoundException
    //   1070	1079	3881	java/io/FileNotFoundException
    //   1140	1152	3881	java/io/FileNotFoundException
    //   1218	1227	3881	java/io/FileNotFoundException
    //   1288	1295	3881	java/io/FileNotFoundException
    //   1356	1365	3881	java/io/FileNotFoundException
    //   1426	1435	3881	java/io/FileNotFoundException
    //   1485	1494	3881	java/io/FileNotFoundException
    //   1544	1554	3881	java/io/FileNotFoundException
    //   1604	1613	3881	java/io/FileNotFoundException
    //   1663	1676	3881	java/io/FileNotFoundException
    //   1726	1744	3881	java/io/FileNotFoundException
    //   1794	1815	3881	java/io/FileNotFoundException
    //   1865	1878	3881	java/io/FileNotFoundException
    //   1928	1946	3881	java/io/FileNotFoundException
    //   1996	2004	3881	java/io/FileNotFoundException
    //   2070	2083	3881	java/io/FileNotFoundException
    //   2144	2162	3881	java/io/FileNotFoundException
    //   2223	2243	3881	java/io/FileNotFoundException
    //   2304	2329	3881	java/io/FileNotFoundException
    //   2390	2415	3881	java/io/FileNotFoundException
    //   2476	2488	3881	java/io/FileNotFoundException
    //   2549	2558	3881	java/io/FileNotFoundException
    //   2619	2632	3881	java/io/FileNotFoundException
    //   2693	2698	3881	java/io/FileNotFoundException
    //   2759	2764	3881	java/io/FileNotFoundException
    //   2829	2839	3881	java/io/FileNotFoundException
    //   2900	2914	3881	java/io/FileNotFoundException
    //   2975	2981	3881	java/io/FileNotFoundException
    //   3042	3050	3881	java/io/FileNotFoundException
    //   3111	3138	3881	java/io/FileNotFoundException
    //   3199	3206	3881	java/io/FileNotFoundException
    //   3267	3275	3881	java/io/FileNotFoundException
    //   3336	3343	3881	java/io/FileNotFoundException
    //   3412	3420	3881	java/io/FileNotFoundException
    //   3481	3492	3881	java/io/FileNotFoundException
    //   3553	3558	3881	java/io/FileNotFoundException
    //   3668	3676	3881	java/io/FileNotFoundException
    //   3737	3742	3881	java/io/FileNotFoundException
    //   3871	3878	3881	java/io/FileNotFoundException
    //   4430	4438	3881	java/io/FileNotFoundException
    //   4499	4504	3881	java/io/FileNotFoundException
    //   4565	4568	3881	java/io/FileNotFoundException
    //   4877	4885	3881	java/io/FileNotFoundException
    //   4946	4951	3881	java/io/FileNotFoundException
    //   5012	5020	3881	java/io/FileNotFoundException
    //   5081	5119	3881	java/io/FileNotFoundException
    //   5180	5187	3881	java/io/FileNotFoundException
    //   5248	5275	3881	java/io/FileNotFoundException
    //   5336	5366	3881	java/io/FileNotFoundException
    //   5464	5472	3881	java/io/FileNotFoundException
    //   5533	5538	3881	java/io/FileNotFoundException
    //   5738	5746	3881	java/io/FileNotFoundException
    //   5807	5812	3881	java/io/FileNotFoundException
    //   5873	5876	3881	java/io/FileNotFoundException
    //   6064	6072	3881	java/io/FileNotFoundException
    //   6133	6138	3881	java/io/FileNotFoundException
    //   6199	6208	3881	java/io/FileNotFoundException
    //   6269	6292	3881	java/io/FileNotFoundException
    //   6353	6360	3881	java/io/FileNotFoundException
    //   6421	6428	3881	java/io/FileNotFoundException
    //   6489	6511	3881	java/io/FileNotFoundException
    //   3748	3761	4018	finally
    //   4019	4021	4018	finally
    //   3565	3572	4367	finally
    //   3580	3585	4367	finally
    //   3593	3595	4367	finally
    //   4042	4049	4367	finally
    //   4057	4064	4367	finally
    //   4072	4088	4367	finally
    //   4096	4101	4367	finally
    //   4109	4123	4367	finally
    //   4139	4147	4367	finally
    //   4155	4164	4367	finally
    //   4201	4245	4367	finally
    //   4253	4269	4367	finally
    //   4277	4291	4367	finally
    //   4299	4307	4367	finally
    //   4315	4331	4367	finally
    //   4339	4344	4367	finally
    //   4352	4360	4367	finally
    //   4770	4772	4367	finally
    //   4780	4787	4367	finally
    //   4795	4803	4367	finally
    //   4811	4816	4367	finally
    //   135	144	4568	java/io/IOException
    //   209	218	4568	java/io/IOException
    //   283	296	4568	java/io/IOException
    //   369	376	4568	java/io/IOException
    //   449	456	4568	java/io/IOException
    //   522	529	4568	java/io/IOException
    //   595	601	4568	java/io/IOException
    //   662	669	4568	java/io/IOException
    //   730	738	4568	java/io/IOException
    //   799	805	4568	java/io/IOException
    //   866	872	4568	java/io/IOException
    //   933	939	4568	java/io/IOException
    //   1000	1009	4568	java/io/IOException
    //   1070	1079	4568	java/io/IOException
    //   1140	1152	4568	java/io/IOException
    //   1218	1227	4568	java/io/IOException
    //   1288	1295	4568	java/io/IOException
    //   1356	1365	4568	java/io/IOException
    //   1426	1435	4568	java/io/IOException
    //   1485	1494	4568	java/io/IOException
    //   1544	1554	4568	java/io/IOException
    //   1604	1613	4568	java/io/IOException
    //   1663	1676	4568	java/io/IOException
    //   1726	1744	4568	java/io/IOException
    //   1794	1815	4568	java/io/IOException
    //   1865	1878	4568	java/io/IOException
    //   1928	1946	4568	java/io/IOException
    //   1996	2004	4568	java/io/IOException
    //   2070	2083	4568	java/io/IOException
    //   2144	2162	4568	java/io/IOException
    //   2223	2243	4568	java/io/IOException
    //   2304	2329	4568	java/io/IOException
    //   2390	2415	4568	java/io/IOException
    //   2476	2488	4568	java/io/IOException
    //   2549	2558	4568	java/io/IOException
    //   2619	2632	4568	java/io/IOException
    //   2693	2698	4568	java/io/IOException
    //   2759	2764	4568	java/io/IOException
    //   2829	2839	4568	java/io/IOException
    //   2900	2914	4568	java/io/IOException
    //   2975	2981	4568	java/io/IOException
    //   3042	3050	4568	java/io/IOException
    //   3111	3138	4568	java/io/IOException
    //   3199	3206	4568	java/io/IOException
    //   3267	3275	4568	java/io/IOException
    //   3336	3343	4568	java/io/IOException
    //   3412	3420	4568	java/io/IOException
    //   3481	3492	4568	java/io/IOException
    //   3553	3558	4568	java/io/IOException
    //   3668	3676	4568	java/io/IOException
    //   3737	3742	4568	java/io/IOException
    //   3871	3878	4568	java/io/IOException
    //   4430	4438	4568	java/io/IOException
    //   4499	4504	4568	java/io/IOException
    //   4565	4568	4568	java/io/IOException
    //   4877	4885	4568	java/io/IOException
    //   4946	4951	4568	java/io/IOException
    //   5012	5020	4568	java/io/IOException
    //   5081	5119	4568	java/io/IOException
    //   5180	5187	4568	java/io/IOException
    //   5248	5275	4568	java/io/IOException
    //   5336	5366	4568	java/io/IOException
    //   5464	5472	4568	java/io/IOException
    //   5533	5538	4568	java/io/IOException
    //   5738	5746	4568	java/io/IOException
    //   5807	5812	4568	java/io/IOException
    //   5873	5876	4568	java/io/IOException
    //   6064	6072	4568	java/io/IOException
    //   6133	6138	4568	java/io/IOException
    //   6199	6208	4568	java/io/IOException
    //   6269	6292	4568	java/io/IOException
    //   6353	6360	4568	java/io/IOException
    //   6421	6428	4568	java/io/IOException
    //   6489	6511	4568	java/io/IOException
    //   3595	3607	4759	finally
    //   4023	4034	4759	finally
    //   4760	4762	4759	finally
    //   5544	5557	5594	finally
    //   5595	5597	5594	finally
    //   5369	5376	5675	finally
    //   5380	5385	5675	finally
    //   5389	5391	5675	finally
    //   5614	5633	5675	finally
    //   5637	5643	5675	finally
    //   5647	5655	5675	finally
    //   5664	5672	5675	finally
    //   5989	5991	5675	finally
    //   5995	6003	5675	finally
    //   135	144	5876	org/json/JSONException
    //   209	218	5876	org/json/JSONException
    //   283	296	5876	org/json/JSONException
    //   369	376	5876	org/json/JSONException
    //   449	456	5876	org/json/JSONException
    //   522	529	5876	org/json/JSONException
    //   595	601	5876	org/json/JSONException
    //   662	669	5876	org/json/JSONException
    //   730	738	5876	org/json/JSONException
    //   799	805	5876	org/json/JSONException
    //   866	872	5876	org/json/JSONException
    //   933	939	5876	org/json/JSONException
    //   1000	1009	5876	org/json/JSONException
    //   1070	1079	5876	org/json/JSONException
    //   1140	1152	5876	org/json/JSONException
    //   1218	1227	5876	org/json/JSONException
    //   1288	1295	5876	org/json/JSONException
    //   1356	1365	5876	org/json/JSONException
    //   1426	1435	5876	org/json/JSONException
    //   2070	2083	5876	org/json/JSONException
    //   2144	2162	5876	org/json/JSONException
    //   2223	2243	5876	org/json/JSONException
    //   2304	2329	5876	org/json/JSONException
    //   2390	2415	5876	org/json/JSONException
    //   2476	2488	5876	org/json/JSONException
    //   2549	2558	5876	org/json/JSONException
    //   2619	2632	5876	org/json/JSONException
    //   2693	2698	5876	org/json/JSONException
    //   2759	2764	5876	org/json/JSONException
    //   2829	2839	5876	org/json/JSONException
    //   2900	2914	5876	org/json/JSONException
    //   2975	2981	5876	org/json/JSONException
    //   3042	3050	5876	org/json/JSONException
    //   3111	3138	5876	org/json/JSONException
    //   3199	3206	5876	org/json/JSONException
    //   3267	3275	5876	org/json/JSONException
    //   3336	3343	5876	org/json/JSONException
    //   3412	3420	5876	org/json/JSONException
    //   3481	3492	5876	org/json/JSONException
    //   3553	3558	5876	org/json/JSONException
    //   3668	3676	5876	org/json/JSONException
    //   3737	3742	5876	org/json/JSONException
    //   3871	3878	5876	org/json/JSONException
    //   4430	4438	5876	org/json/JSONException
    //   4499	4504	5876	org/json/JSONException
    //   4565	4568	5876	org/json/JSONException
    //   4877	4885	5876	org/json/JSONException
    //   4946	4951	5876	org/json/JSONException
    //   5012	5020	5876	org/json/JSONException
    //   5081	5119	5876	org/json/JSONException
    //   5180	5187	5876	org/json/JSONException
    //   5248	5275	5876	org/json/JSONException
    //   5336	5366	5876	org/json/JSONException
    //   5464	5472	5876	org/json/JSONException
    //   5533	5538	5876	org/json/JSONException
    //   5738	5746	5876	org/json/JSONException
    //   5807	5812	5876	org/json/JSONException
    //   5873	5876	5876	org/json/JSONException
    //   6064	6072	5876	org/json/JSONException
    //   6133	6138	5876	org/json/JSONException
    //   6199	6208	5876	org/json/JSONException
    //   6269	6292	5876	org/json/JSONException
    //   6353	6360	5876	org/json/JSONException
    //   6421	6428	5876	org/json/JSONException
    //   6489	6511	5876	org/json/JSONException
    //   5391	5403	5982	finally
    //   5599	5610	5982	finally
    //   5983	5985	5982	finally
    //   6517	6530	6567	finally
    //   6568	6570	6567	finally
    //   3967	3980	6572	finally
    //   6573	6575	6572	finally
    //   4708	4721	6577	finally
    //   6578	6580	6577	finally
    //   5931	5944	6582	finally
    //   6583	6585	6582	finally
    //   135	144	6587	java/lang/Throwable
    //   209	218	6587	java/lang/Throwable
    //   283	296	6587	java/lang/Throwable
    //   369	376	6587	java/lang/Throwable
    //   449	456	6587	java/lang/Throwable
    //   522	529	6587	java/lang/Throwable
    //   595	601	6587	java/lang/Throwable
    //   662	669	6587	java/lang/Throwable
    //   730	738	6587	java/lang/Throwable
    //   799	805	6587	java/lang/Throwable
    //   866	872	6587	java/lang/Throwable
    //   933	939	6587	java/lang/Throwable
    //   1000	1009	6587	java/lang/Throwable
    //   1070	1079	6587	java/lang/Throwable
    //   1140	1152	6587	java/lang/Throwable
    //   1218	1227	6587	java/lang/Throwable
    //   1288	1295	6587	java/lang/Throwable
    //   1356	1365	6587	java/lang/Throwable
    //   1426	1435	6587	java/lang/Throwable
    //   1485	1494	6587	java/lang/Throwable
    //   1544	1554	6587	java/lang/Throwable
    //   1604	1613	6587	java/lang/Throwable
    //   1663	1676	6587	java/lang/Throwable
    //   1726	1744	6587	java/lang/Throwable
    //   1794	1815	6587	java/lang/Throwable
    //   1865	1878	6587	java/lang/Throwable
    //   1928	1946	6587	java/lang/Throwable
    //   1996	2004	6587	java/lang/Throwable
    //   2070	2083	6587	java/lang/Throwable
    //   2144	2162	6587	java/lang/Throwable
    //   2223	2243	6587	java/lang/Throwable
    //   2304	2329	6587	java/lang/Throwable
    //   2390	2415	6587	java/lang/Throwable
    //   2476	2488	6587	java/lang/Throwable
    //   2549	2558	6587	java/lang/Throwable
    //   2619	2632	6587	java/lang/Throwable
    //   2693	2698	6587	java/lang/Throwable
    //   2759	2764	6587	java/lang/Throwable
    //   2829	2839	6587	java/lang/Throwable
    //   2900	2914	6587	java/lang/Throwable
    //   2975	2981	6587	java/lang/Throwable
    //   3042	3050	6587	java/lang/Throwable
    //   3111	3138	6587	java/lang/Throwable
    //   3199	3206	6587	java/lang/Throwable
    //   3267	3275	6587	java/lang/Throwable
    //   3336	3343	6587	java/lang/Throwable
    //   3412	3420	6587	java/lang/Throwable
    //   3481	3492	6587	java/lang/Throwable
    //   3553	3558	6587	java/lang/Throwable
    //   3668	3676	6587	java/lang/Throwable
    //   3737	3742	6587	java/lang/Throwable
    //   3871	3878	6587	java/lang/Throwable
    //   4430	4438	6587	java/lang/Throwable
    //   4499	4504	6587	java/lang/Throwable
    //   4565	4568	6587	java/lang/Throwable
    //   4877	4885	6587	java/lang/Throwable
    //   4946	4951	6587	java/lang/Throwable
    //   5012	5020	6587	java/lang/Throwable
    //   5081	5119	6587	java/lang/Throwable
    //   5180	5187	6587	java/lang/Throwable
    //   5248	5275	6587	java/lang/Throwable
    //   5336	5366	6587	java/lang/Throwable
    //   5464	5472	6587	java/lang/Throwable
    //   5533	5538	6587	java/lang/Throwable
    //   5738	5746	6587	java/lang/Throwable
    //   5807	5812	6587	java/lang/Throwable
    //   5873	5876	6587	java/lang/Throwable
    //   6064	6072	6587	java/lang/Throwable
    //   6133	6138	6587	java/lang/Throwable
    //   6199	6208	6587	java/lang/Throwable
    //   6269	6292	6587	java/lang/Throwable
    //   6353	6360	6587	java/lang/Throwable
    //   6421	6428	6587	java/lang/Throwable
    //   6489	6511	6587	java/lang/Throwable
    //   6673	6686	6724	finally
    //   6725	6727	6724	finally
    //   135	144	6729	finally
    //   209	218	6729	finally
    //   283	296	6729	finally
    //   369	376	6729	finally
    //   449	456	6729	finally
    //   522	529	6729	finally
    //   595	601	6729	finally
    //   662	669	6729	finally
    //   730	738	6729	finally
    //   799	805	6729	finally
    //   866	872	6729	finally
    //   933	939	6729	finally
    //   1000	1009	6729	finally
    //   1070	1079	6729	finally
    //   1140	1152	6729	finally
    //   1218	1227	6729	finally
    //   1288	1295	6729	finally
    //   1356	1365	6729	finally
    //   1426	1435	6729	finally
    //   1485	1494	6729	finally
    //   1544	1554	6729	finally
    //   1604	1613	6729	finally
    //   1663	1676	6729	finally
    //   1726	1744	6729	finally
    //   1794	1815	6729	finally
    //   1865	1878	6729	finally
    //   1928	1946	6729	finally
    //   1996	2004	6729	finally
    //   2070	2083	6729	finally
    //   2144	2162	6729	finally
    //   2223	2243	6729	finally
    //   2304	2329	6729	finally
    //   2390	2415	6729	finally
    //   2476	2488	6729	finally
    //   2549	2558	6729	finally
    //   2619	2632	6729	finally
    //   2693	2698	6729	finally
    //   2759	2764	6729	finally
    //   2829	2839	6729	finally
    //   2900	2914	6729	finally
    //   2975	2981	6729	finally
    //   3042	3050	6729	finally
    //   3111	3138	6729	finally
    //   3199	3206	6729	finally
    //   3267	3275	6729	finally
    //   3336	3343	6729	finally
    //   3412	3420	6729	finally
    //   3481	3492	6729	finally
    //   3553	3558	6729	finally
    //   3668	3676	6729	finally
    //   3737	3742	6729	finally
    //   3871	3878	6729	finally
    //   3892	3910	6729	finally
    //   3920	3932	6729	finally
    //   3942	3961	6729	finally
    //   4430	4438	6729	finally
    //   4499	4504	6729	finally
    //   4565	4568	6729	finally
    //   4579	4597	6729	finally
    //   4607	4619	6729	finally
    //   4629	4673	6729	finally
    //   4683	4702	6729	finally
    //   4877	4885	6729	finally
    //   4946	4951	6729	finally
    //   5012	5020	6729	finally
    //   5081	5119	6729	finally
    //   5180	5187	6729	finally
    //   5248	5275	6729	finally
    //   5336	5366	6729	finally
    //   5464	5472	6729	finally
    //   5533	5538	6729	finally
    //   5738	5746	6729	finally
    //   5807	5812	6729	finally
    //   5873	5876	6729	finally
    //   5887	5898	6729	finally
    //   5908	5925	6729	finally
    //   6064	6072	6729	finally
    //   6133	6138	6729	finally
    //   6199	6208	6729	finally
    //   6269	6292	6729	finally
    //   6353	6360	6729	finally
    //   6421	6428	6729	finally
    //   6489	6511	6729	finally
    //   6598	6616	6729	finally
    //   6626	6638	6729	finally
    //   6648	6667	6729	finally
    //   6738	6752	6792	finally
    //   6793	6796	6792	finally
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */