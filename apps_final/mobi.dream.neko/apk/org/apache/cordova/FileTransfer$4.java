package org.apache.cordova;

import android.net.Uri;
import org.json.JSONObject;

class FileTransfer$4
  implements Runnable
{
  FileTransfer$4(FileTransfer paramFileTransfer, FileTransfer.RequestContext paramRequestContext, CordovaResourceApi paramCordovaResourceApi, Uri paramUri1, Uri paramUri2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, JSONObject paramJSONObject, String paramString1, String paramString2, String paramString3) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4: getfield 74	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
    //   7: ifeq +4 -> 11
    //   10: return
    //   11: aconst_null
    //   12: astore 45
    //   14: aconst_null
    //   15: astore 46
    //   17: aconst_null
    //   18: astore 47
    //   20: aconst_null
    //   21: astore 48
    //   23: aconst_null
    //   24: astore 49
    //   26: aconst_null
    //   27: astore 6
    //   29: aconst_null
    //   30: astore 43
    //   32: aconst_null
    //   33: astore 31
    //   35: aconst_null
    //   36: astore 34
    //   38: aconst_null
    //   39: astore 35
    //   41: aconst_null
    //   42: astore 36
    //   44: aconst_null
    //   45: astore 37
    //   47: aconst_null
    //   48: astore 4
    //   50: aconst_null
    //   51: astore 44
    //   53: aconst_null
    //   54: astore 38
    //   56: aconst_null
    //   57: astore 39
    //   59: aconst_null
    //   60: astore 40
    //   62: aconst_null
    //   63: astore 41
    //   65: aconst_null
    //   66: astore 42
    //   68: aconst_null
    //   69: astore_3
    //   70: aconst_null
    //   71: astore 50
    //   73: aconst_null
    //   74: astore 51
    //   76: aconst_null
    //   77: astore 52
    //   79: aconst_null
    //   80: astore 53
    //   82: aconst_null
    //   83: astore 9
    //   85: aconst_null
    //   86: astore 32
    //   88: aconst_null
    //   89: astore 33
    //   91: aconst_null
    //   92: astore 28
    //   94: aconst_null
    //   95: astore 29
    //   97: aconst_null
    //   98: astore 30
    //   100: aconst_null
    //   101: astore 8
    //   103: aconst_null
    //   104: astore 27
    //   106: aload 45
    //   108: astore 19
    //   110: aload 9
    //   112: astore 23
    //   114: aload 31
    //   116: astore 10
    //   118: aload 38
    //   120: astore 11
    //   122: aload 46
    //   124: astore 20
    //   126: aload 50
    //   128: astore 24
    //   130: aload 34
    //   132: astore 12
    //   134: aload 39
    //   136: astore 13
    //   138: aload 47
    //   140: astore 21
    //   142: aload 51
    //   144: astore 25
    //   146: aload 35
    //   148: astore 14
    //   150: aload 40
    //   152: astore 15
    //   154: aload 48
    //   156: astore 22
    //   158: aload 52
    //   160: astore 26
    //   162: aload 36
    //   164: astore 16
    //   166: aload 41
    //   168: astore 17
    //   170: aload 49
    //   172: astore 5
    //   174: aload 53
    //   176: astore 7
    //   178: aload 37
    //   180: astore_1
    //   181: aload 42
    //   183: astore_2
    //   184: aload_0
    //   185: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
    //   188: aload_0
    //   189: getfield 40	org/apache/cordova/FileTransfer$4:val$targetUri	Landroid/net/Uri;
    //   192: invokevirtual 80	org/apache/cordova/CordovaResourceApi:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   195: astore 18
    //   197: aload 45
    //   199: astore 19
    //   201: aload 9
    //   203: astore 23
    //   205: aload 31
    //   207: astore 10
    //   209: aload 38
    //   211: astore 11
    //   213: aload 18
    //   215: astore 27
    //   217: aload 46
    //   219: astore 20
    //   221: aload 50
    //   223: astore 24
    //   225: aload 34
    //   227: astore 12
    //   229: aload 39
    //   231: astore 13
    //   233: aload 18
    //   235: astore 28
    //   237: aload 47
    //   239: astore 21
    //   241: aload 51
    //   243: astore 25
    //   245: aload 35
    //   247: astore 14
    //   249: aload 40
    //   251: astore 15
    //   253: aload 18
    //   255: astore 29
    //   257: aload 48
    //   259: astore 22
    //   261: aload 52
    //   263: astore 26
    //   265: aload 36
    //   267: astore 16
    //   269: aload 41
    //   271: astore 17
    //   273: aload 18
    //   275: astore 30
    //   277: aload 49
    //   279: astore 5
    //   281: aload 53
    //   283: astore 7
    //   285: aload 37
    //   287: astore_1
    //   288: aload 42
    //   290: astore_2
    //   291: aload 18
    //   293: astore 8
    //   295: aload_0
    //   296: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
    //   299: aload_0
    //   300: getfield 40	org/apache/cordova/FileTransfer$4:val$targetUri	Landroid/net/Uri;
    //   303: invokevirtual 84	org/apache/cordova/CordovaResourceApi:mapUriToFile	(Landroid/net/Uri;)Ljava/io/File;
    //   306: astore 9
    //   308: aload 45
    //   310: astore 19
    //   312: aload 9
    //   314: astore 23
    //   316: aload 31
    //   318: astore 10
    //   320: aload 38
    //   322: astore 11
    //   324: aload 18
    //   326: astore 27
    //   328: aload 46
    //   330: astore 20
    //   332: aload 9
    //   334: astore 24
    //   336: aload 34
    //   338: astore 12
    //   340: aload 39
    //   342: astore 13
    //   344: aload 18
    //   346: astore 28
    //   348: aload 47
    //   350: astore 21
    //   352: aload 9
    //   354: astore 25
    //   356: aload 35
    //   358: astore 14
    //   360: aload 40
    //   362: astore 15
    //   364: aload 18
    //   366: astore 29
    //   368: aload 48
    //   370: astore 22
    //   372: aload 9
    //   374: astore 26
    //   376: aload 36
    //   378: astore 16
    //   380: aload 41
    //   382: astore 17
    //   384: aload 18
    //   386: astore 30
    //   388: aload 49
    //   390: astore 5
    //   392: aload 9
    //   394: astore 7
    //   396: aload 37
    //   398: astore_1
    //   399: aload 42
    //   401: astore_2
    //   402: aload 18
    //   404: astore 8
    //   406: aload_0
    //   407: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   410: aload 9
    //   412: putfield 88	org/apache/cordova/FileTransfer$RequestContext:targetFile	Ljava/io/File;
    //   415: aload 45
    //   417: astore 19
    //   419: aload 9
    //   421: astore 23
    //   423: aload 31
    //   425: astore 10
    //   427: aload 38
    //   429: astore 11
    //   431: aload 18
    //   433: astore 27
    //   435: aload 46
    //   437: astore 20
    //   439: aload 9
    //   441: astore 24
    //   443: aload 34
    //   445: astore 12
    //   447: aload 39
    //   449: astore 13
    //   451: aload 18
    //   453: astore 28
    //   455: aload 47
    //   457: astore 21
    //   459: aload 9
    //   461: astore 25
    //   463: aload 35
    //   465: astore 14
    //   467: aload 40
    //   469: astore 15
    //   471: aload 18
    //   473: astore 29
    //   475: aload 48
    //   477: astore 22
    //   479: aload 9
    //   481: astore 26
    //   483: aload 36
    //   485: astore 16
    //   487: aload 41
    //   489: astore 17
    //   491: aload 18
    //   493: astore 30
    //   495: aload 49
    //   497: astore 5
    //   499: aload 9
    //   501: astore 7
    //   503: aload 37
    //   505: astore_1
    //   506: aload 42
    //   508: astore_2
    //   509: aload 18
    //   511: astore 8
    //   513: ldc 90
    //   515: new 92	java/lang/StringBuilder
    //   518: dup
    //   519: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   522: ldc 95
    //   524: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: aload_0
    //   528: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
    //   531: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   534: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   537: invokestatic 112	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   540: pop
    //   541: aload 45
    //   543: astore 19
    //   545: aload 9
    //   547: astore 23
    //   549: aload 31
    //   551: astore 10
    //   553: aload 38
    //   555: astore 11
    //   557: aload 18
    //   559: astore 27
    //   561: aload 46
    //   563: astore 20
    //   565: aload 9
    //   567: astore 24
    //   569: aload 34
    //   571: astore 12
    //   573: aload 39
    //   575: astore 13
    //   577: aload 18
    //   579: astore 28
    //   581: aload 47
    //   583: astore 21
    //   585: aload 9
    //   587: astore 25
    //   589: aload 35
    //   591: astore 14
    //   593: aload 40
    //   595: astore 15
    //   597: aload 18
    //   599: astore 29
    //   601: aload 48
    //   603: astore 22
    //   605: aload 9
    //   607: astore 26
    //   609: aload 36
    //   611: astore 16
    //   613: aload 41
    //   615: astore 17
    //   617: aload 18
    //   619: astore 30
    //   621: aload 49
    //   623: astore 5
    //   625: aload 9
    //   627: astore 7
    //   629: aload 37
    //   631: astore_1
    //   632: aload 42
    //   634: astore_2
    //   635: aload 18
    //   637: astore 8
    //   639: new 114	org/apache/cordova/FileProgressResult
    //   642: dup
    //   643: invokespecial 115	org/apache/cordova/FileProgressResult:<init>	()V
    //   646: astore 50
    //   648: aload 45
    //   650: astore 19
    //   652: aload 9
    //   654: astore 23
    //   656: aload 31
    //   658: astore 10
    //   660: aload 38
    //   662: astore 11
    //   664: aload 18
    //   666: astore 27
    //   668: aload 46
    //   670: astore 20
    //   672: aload 9
    //   674: astore 24
    //   676: aload 34
    //   678: astore 12
    //   680: aload 39
    //   682: astore 13
    //   684: aload 18
    //   686: astore 28
    //   688: aload 47
    //   690: astore 21
    //   692: aload 9
    //   694: astore 25
    //   696: aload 35
    //   698: astore 14
    //   700: aload 40
    //   702: astore 15
    //   704: aload 18
    //   706: astore 29
    //   708: aload 48
    //   710: astore 22
    //   712: aload 9
    //   714: astore 26
    //   716: aload 36
    //   718: astore 16
    //   720: aload 41
    //   722: astore 17
    //   724: aload 18
    //   726: astore 30
    //   728: aload 49
    //   730: astore 5
    //   732: aload 9
    //   734: astore 7
    //   736: aload 37
    //   738: astore_1
    //   739: aload 42
    //   741: astore_2
    //   742: aload 18
    //   744: astore 8
    //   746: aload_0
    //   747: getfield 44	org/apache/cordova/FileTransfer$4:val$isLocalTransfer	Z
    //   750: ifeq +993 -> 1743
    //   753: aload 45
    //   755: astore 19
    //   757: aload 9
    //   759: astore 23
    //   761: aload 31
    //   763: astore 10
    //   765: aload 38
    //   767: astore 11
    //   769: aload 18
    //   771: astore 27
    //   773: aload 46
    //   775: astore 20
    //   777: aload 9
    //   779: astore 24
    //   781: aload 34
    //   783: astore 12
    //   785: aload 39
    //   787: astore 13
    //   789: aload 18
    //   791: astore 28
    //   793: aload 47
    //   795: astore 21
    //   797: aload 9
    //   799: astore 25
    //   801: aload 35
    //   803: astore 14
    //   805: aload 40
    //   807: astore 15
    //   809: aload 18
    //   811: astore 29
    //   813: aload 48
    //   815: astore 22
    //   817: aload 9
    //   819: astore 26
    //   821: aload 36
    //   823: astore 16
    //   825: aload 41
    //   827: astore 17
    //   829: aload 18
    //   831: astore 30
    //   833: aload 49
    //   835: astore 5
    //   837: aload 9
    //   839: astore 7
    //   841: aload 37
    //   843: astore_1
    //   844: aload 42
    //   846: astore_2
    //   847: aload 18
    //   849: astore 8
    //   851: aload_0
    //   852: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
    //   855: aload_0
    //   856: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
    //   859: invokevirtual 119	org/apache/cordova/CordovaResourceApi:openForRead	(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    //   862: astore 43
    //   864: aload 45
    //   866: astore 19
    //   868: aload 9
    //   870: astore 23
    //   872: aload 31
    //   874: astore 10
    //   876: aload 38
    //   878: astore 11
    //   880: aload 18
    //   882: astore 27
    //   884: aload 46
    //   886: astore 20
    //   888: aload 9
    //   890: astore 24
    //   892: aload 34
    //   894: astore 12
    //   896: aload 39
    //   898: astore 13
    //   900: aload 18
    //   902: astore 28
    //   904: aload 47
    //   906: astore 21
    //   908: aload 9
    //   910: astore 25
    //   912: aload 35
    //   914: astore 14
    //   916: aload 40
    //   918: astore 15
    //   920: aload 18
    //   922: astore 29
    //   924: aload 48
    //   926: astore 22
    //   928: aload 9
    //   930: astore 26
    //   932: aload 36
    //   934: astore 16
    //   936: aload 41
    //   938: astore 17
    //   940: aload 18
    //   942: astore 30
    //   944: aload 49
    //   946: astore 5
    //   948: aload 9
    //   950: astore 7
    //   952: aload 37
    //   954: astore_1
    //   955: aload 42
    //   957: astore_2
    //   958: aload 18
    //   960: astore 8
    //   962: aload 43
    //   964: getfield 125	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
    //   967: ldc2_w 126
    //   970: lcmp
    //   971: ifeq +215 -> 1186
    //   974: aload 45
    //   976: astore 19
    //   978: aload 9
    //   980: astore 23
    //   982: aload 31
    //   984: astore 10
    //   986: aload 38
    //   988: astore 11
    //   990: aload 18
    //   992: astore 27
    //   994: aload 46
    //   996: astore 20
    //   998: aload 9
    //   1000: astore 24
    //   1002: aload 34
    //   1004: astore 12
    //   1006: aload 39
    //   1008: astore 13
    //   1010: aload 18
    //   1012: astore 28
    //   1014: aload 47
    //   1016: astore 21
    //   1018: aload 9
    //   1020: astore 25
    //   1022: aload 35
    //   1024: astore 14
    //   1026: aload 40
    //   1028: astore 15
    //   1030: aload 18
    //   1032: astore 29
    //   1034: aload 48
    //   1036: astore 22
    //   1038: aload 9
    //   1040: astore 26
    //   1042: aload 36
    //   1044: astore 16
    //   1046: aload 41
    //   1048: astore 17
    //   1050: aload 18
    //   1052: astore 30
    //   1054: aload 49
    //   1056: astore 5
    //   1058: aload 9
    //   1060: astore 7
    //   1062: aload 37
    //   1064: astore_1
    //   1065: aload 42
    //   1067: astore_2
    //   1068: aload 18
    //   1070: astore 8
    //   1072: aload 50
    //   1074: iconst_1
    //   1075: invokevirtual 131	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
    //   1078: aload 45
    //   1080: astore 19
    //   1082: aload 9
    //   1084: astore 23
    //   1086: aload 31
    //   1088: astore 10
    //   1090: aload 38
    //   1092: astore 11
    //   1094: aload 18
    //   1096: astore 27
    //   1098: aload 46
    //   1100: astore 20
    //   1102: aload 9
    //   1104: astore 24
    //   1106: aload 34
    //   1108: astore 12
    //   1110: aload 39
    //   1112: astore 13
    //   1114: aload 18
    //   1116: astore 28
    //   1118: aload 47
    //   1120: astore 21
    //   1122: aload 9
    //   1124: astore 25
    //   1126: aload 35
    //   1128: astore 14
    //   1130: aload 40
    //   1132: astore 15
    //   1134: aload 18
    //   1136: astore 29
    //   1138: aload 48
    //   1140: astore 22
    //   1142: aload 9
    //   1144: astore 26
    //   1146: aload 36
    //   1148: astore 16
    //   1150: aload 41
    //   1152: astore 17
    //   1154: aload 18
    //   1156: astore 30
    //   1158: aload 49
    //   1160: astore 5
    //   1162: aload 9
    //   1164: astore 7
    //   1166: aload 37
    //   1168: astore_1
    //   1169: aload 42
    //   1171: astore_2
    //   1172: aload 18
    //   1174: astore 8
    //   1176: aload 50
    //   1178: aload 43
    //   1180: getfield 125	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
    //   1183: invokevirtual 135	org/apache/cordova/FileProgressResult:setTotal	(J)V
    //   1186: aload 45
    //   1188: astore 19
    //   1190: aload 9
    //   1192: astore 23
    //   1194: aload 31
    //   1196: astore 10
    //   1198: aload 38
    //   1200: astore 11
    //   1202: aload 18
    //   1204: astore 27
    //   1206: aload 46
    //   1208: astore 20
    //   1210: aload 9
    //   1212: astore 24
    //   1214: aload 34
    //   1216: astore 12
    //   1218: aload 39
    //   1220: astore 13
    //   1222: aload 18
    //   1224: astore 28
    //   1226: aload 47
    //   1228: astore 21
    //   1230: aload 9
    //   1232: astore 25
    //   1234: aload 35
    //   1236: astore 14
    //   1238: aload 40
    //   1240: astore 15
    //   1242: aload 18
    //   1244: astore 29
    //   1246: aload 48
    //   1248: astore 22
    //   1250: aload 9
    //   1252: astore 26
    //   1254: aload 36
    //   1256: astore 16
    //   1258: aload 41
    //   1260: astore 17
    //   1262: aload 18
    //   1264: astore 30
    //   1266: aload 49
    //   1268: astore 5
    //   1270: aload 9
    //   1272: astore 7
    //   1274: aload 37
    //   1276: astore_1
    //   1277: aload 42
    //   1279: astore_2
    //   1280: aload 18
    //   1282: astore 8
    //   1284: new 137	org/apache/cordova/FileTransfer$SimpleTrackingInputStream
    //   1287: dup
    //   1288: aload 43
    //   1290: getfield 141	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   1293: invokespecial 144	org/apache/cordova/FileTransfer$SimpleTrackingInputStream:<init>	(Ljava/io/InputStream;)V
    //   1296: astore 31
    //   1298: aload_0
    //   1299: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   1302: astore_1
    //   1303: aload_1
    //   1304: monitorenter
    //   1305: aload_0
    //   1306: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   1309: getfield 74	org/apache/cordova/FileTransfer$RequestContext:aborted	Z
    //   1312: ifeq +2408 -> 3720
    //   1315: aload_1
    //   1316: monitorexit
    //   1317: aload 6
    //   1319: astore 19
    //   1321: aload 9
    //   1323: astore 23
    //   1325: aload 4
    //   1327: astore 10
    //   1329: aload_3
    //   1330: astore 11
    //   1332: aload 18
    //   1334: astore 27
    //   1336: aload 6
    //   1338: astore 20
    //   1340: aload 9
    //   1342: astore 24
    //   1344: aload 4
    //   1346: astore 12
    //   1348: aload_3
    //   1349: astore 13
    //   1351: aload 18
    //   1353: astore 28
    //   1355: aload 6
    //   1357: astore 21
    //   1359: aload 9
    //   1361: astore 25
    //   1363: aload 4
    //   1365: astore 14
    //   1367: aload_3
    //   1368: astore 15
    //   1370: aload 18
    //   1372: astore 29
    //   1374: aload 6
    //   1376: astore 22
    //   1378: aload 9
    //   1380: astore 26
    //   1382: aload 4
    //   1384: astore 16
    //   1386: aload_3
    //   1387: astore 17
    //   1389: aload 18
    //   1391: astore 30
    //   1393: aload 6
    //   1395: astore 5
    //   1397: aload 9
    //   1399: astore 7
    //   1401: aload 4
    //   1403: astore_1
    //   1404: aload_3
    //   1405: astore_2
    //   1406: aload 18
    //   1408: astore 8
    //   1410: aload_0
    //   1411: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   1414: aconst_null
    //   1415: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   1418: aload 6
    //   1420: astore 19
    //   1422: aload 9
    //   1424: astore 23
    //   1426: aload 4
    //   1428: astore 10
    //   1430: aload_3
    //   1431: astore 11
    //   1433: aload 18
    //   1435: astore 27
    //   1437: aload 6
    //   1439: astore 20
    //   1441: aload 9
    //   1443: astore 24
    //   1445: aload 4
    //   1447: astore 12
    //   1449: aload_3
    //   1450: astore 13
    //   1452: aload 18
    //   1454: astore 28
    //   1456: aload 6
    //   1458: astore 21
    //   1460: aload 9
    //   1462: astore 25
    //   1464: aload 4
    //   1466: astore 14
    //   1468: aload_3
    //   1469: astore 15
    //   1471: aload 18
    //   1473: astore 29
    //   1475: aload 6
    //   1477: astore 22
    //   1479: aload 9
    //   1481: astore 26
    //   1483: aload 4
    //   1485: astore 16
    //   1487: aload_3
    //   1488: astore 17
    //   1490: aload 18
    //   1492: astore 30
    //   1494: aload 6
    //   1496: astore 5
    //   1498: aload 9
    //   1500: astore 7
    //   1502: aload 4
    //   1504: astore_1
    //   1505: aload_3
    //   1506: astore_2
    //   1507: aload 18
    //   1509: astore 8
    //   1511: aload 31
    //   1513: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   1516: aload 6
    //   1518: astore 19
    //   1520: aload 9
    //   1522: astore 23
    //   1524: aload 4
    //   1526: astore 10
    //   1528: aload_3
    //   1529: astore 11
    //   1531: aload 18
    //   1533: astore 27
    //   1535: aload 6
    //   1537: astore 20
    //   1539: aload 9
    //   1541: astore 24
    //   1543: aload 4
    //   1545: astore 12
    //   1547: aload_3
    //   1548: astore 13
    //   1550: aload 18
    //   1552: astore 28
    //   1554: aload 6
    //   1556: astore 21
    //   1558: aload 9
    //   1560: astore 25
    //   1562: aload 4
    //   1564: astore 14
    //   1566: aload_3
    //   1567: astore 15
    //   1569: aload 18
    //   1571: astore 29
    //   1573: aload 6
    //   1575: astore 22
    //   1577: aload 9
    //   1579: astore 26
    //   1581: aload 4
    //   1583: astore 16
    //   1585: aload_3
    //   1586: astore 17
    //   1588: aload 18
    //   1590: astore 30
    //   1592: aload 6
    //   1594: astore 5
    //   1596: aload 9
    //   1598: astore 7
    //   1600: aload 4
    //   1602: astore_1
    //   1603: aload_3
    //   1604: astore_2
    //   1605: aload 18
    //   1607: astore 8
    //   1609: aload 18
    //   1611: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   1614: aload 18
    //   1616: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   1619: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   1622: astore_1
    //   1623: aload_1
    //   1624: monitorenter
    //   1625: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   1628: aload_0
    //   1629: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   1632: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1635: pop
    //   1636: aload_1
    //   1637: monitorexit
    //   1638: aload 6
    //   1640: ifnull +34 -> 1674
    //   1643: aload_0
    //   1644: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   1647: ifeq +27 -> 1674
    //   1650: aload_0
    //   1651: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   1654: ifeq +20 -> 1674
    //   1657: aload 6
    //   1659: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   1662: astore_1
    //   1663: aload_1
    //   1664: aload 4
    //   1666: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   1669: aload_1
    //   1670: aload_3
    //   1671: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   1674: aload 33
    //   1676: astore_1
    //   1677: iconst_0
    //   1678: ifne +30 -> 1708
    //   1681: new 173	org/apache/cordova/api/PluginResult
    //   1684: dup
    //   1685: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   1688: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   1691: aload_0
    //   1692: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   1695: aload_0
    //   1696: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   1699: aload 6
    //   1701: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   1704: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   1707: astore_1
    //   1708: aload_1
    //   1709: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   1712: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   1715: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   1718: if_icmpeq +14 -> 1732
    //   1721: aload 9
    //   1723: ifnull +9 -> 1732
    //   1726: aload 9
    //   1728: invokevirtual 206	java/io/File:delete	()Z
    //   1731: pop
    //   1732: aload_0
    //   1733: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   1736: astore_2
    //   1737: aload_2
    //   1738: aload_1
    //   1739: invokevirtual 210	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   1742: return
    //   1743: aload 45
    //   1745: astore 19
    //   1747: aload 9
    //   1749: astore 23
    //   1751: aload 31
    //   1753: astore 10
    //   1755: aload 38
    //   1757: astore 11
    //   1759: aload 18
    //   1761: astore 27
    //   1763: aload 46
    //   1765: astore 20
    //   1767: aload 9
    //   1769: astore 24
    //   1771: aload 34
    //   1773: astore 12
    //   1775: aload 39
    //   1777: astore 13
    //   1779: aload 18
    //   1781: astore 28
    //   1783: aload 47
    //   1785: astore 21
    //   1787: aload 9
    //   1789: astore 25
    //   1791: aload 35
    //   1793: astore 14
    //   1795: aload 40
    //   1797: astore 15
    //   1799: aload 18
    //   1801: astore 29
    //   1803: aload 48
    //   1805: astore 22
    //   1807: aload 9
    //   1809: astore 26
    //   1811: aload 36
    //   1813: astore 16
    //   1815: aload 41
    //   1817: astore 17
    //   1819: aload 18
    //   1821: astore 30
    //   1823: aload 49
    //   1825: astore 5
    //   1827: aload 9
    //   1829: astore 7
    //   1831: aload 37
    //   1833: astore_1
    //   1834: aload 42
    //   1836: astore_2
    //   1837: aload 18
    //   1839: astore 8
    //   1841: aload_0
    //   1842: getfield 38	org/apache/cordova/FileTransfer$4:val$resourceApi	Lorg/apache/cordova/CordovaResourceApi;
    //   1845: aload_0
    //   1846: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
    //   1849: invokevirtual 214	org/apache/cordova/CordovaResourceApi:createHttpConnection	(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    //   1852: astore 6
    //   1854: aload 43
    //   1856: astore 4
    //   1858: aload 44
    //   1860: astore_3
    //   1861: aload 6
    //   1863: astore 19
    //   1865: aload 9
    //   1867: astore 23
    //   1869: aload 31
    //   1871: astore 10
    //   1873: aload 38
    //   1875: astore 11
    //   1877: aload 18
    //   1879: astore 27
    //   1881: aload 6
    //   1883: astore 20
    //   1885: aload 9
    //   1887: astore 24
    //   1889: aload 34
    //   1891: astore 12
    //   1893: aload 39
    //   1895: astore 13
    //   1897: aload 18
    //   1899: astore 28
    //   1901: aload 6
    //   1903: astore 21
    //   1905: aload 9
    //   1907: astore 25
    //   1909: aload 35
    //   1911: astore 14
    //   1913: aload 40
    //   1915: astore 15
    //   1917: aload 18
    //   1919: astore 29
    //   1921: aload 6
    //   1923: astore 22
    //   1925: aload 9
    //   1927: astore 26
    //   1929: aload 36
    //   1931: astore 16
    //   1933: aload 41
    //   1935: astore 17
    //   1937: aload 18
    //   1939: astore 30
    //   1941: aload 6
    //   1943: astore 5
    //   1945: aload 9
    //   1947: astore 7
    //   1949: aload 37
    //   1951: astore_1
    //   1952: aload 42
    //   1954: astore_2
    //   1955: aload 18
    //   1957: astore 8
    //   1959: aload_0
    //   1960: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   1963: ifeq +525 -> 2488
    //   1966: aload 43
    //   1968: astore 4
    //   1970: aload 44
    //   1972: astore_3
    //   1973: aload 6
    //   1975: astore 19
    //   1977: aload 9
    //   1979: astore 23
    //   1981: aload 31
    //   1983: astore 10
    //   1985: aload 38
    //   1987: astore 11
    //   1989: aload 18
    //   1991: astore 27
    //   1993: aload 6
    //   1995: astore 20
    //   1997: aload 9
    //   1999: astore 24
    //   2001: aload 34
    //   2003: astore 12
    //   2005: aload 39
    //   2007: astore 13
    //   2009: aload 18
    //   2011: astore 28
    //   2013: aload 6
    //   2015: astore 21
    //   2017: aload 9
    //   2019: astore 25
    //   2021: aload 35
    //   2023: astore 14
    //   2025: aload 40
    //   2027: astore 15
    //   2029: aload 18
    //   2031: astore 29
    //   2033: aload 6
    //   2035: astore 22
    //   2037: aload 9
    //   2039: astore 26
    //   2041: aload 36
    //   2043: astore 16
    //   2045: aload 41
    //   2047: astore 17
    //   2049: aload 18
    //   2051: astore 30
    //   2053: aload 6
    //   2055: astore 5
    //   2057: aload 9
    //   2059: astore 7
    //   2061: aload 37
    //   2063: astore_1
    //   2064: aload 42
    //   2066: astore_2
    //   2067: aload 18
    //   2069: astore 8
    //   2071: aload_0
    //   2072: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   2075: ifeq +413 -> 2488
    //   2078: aload 6
    //   2080: astore 19
    //   2082: aload 9
    //   2084: astore 23
    //   2086: aload 31
    //   2088: astore 10
    //   2090: aload 38
    //   2092: astore 11
    //   2094: aload 18
    //   2096: astore 27
    //   2098: aload 6
    //   2100: astore 20
    //   2102: aload 9
    //   2104: astore 24
    //   2106: aload 34
    //   2108: astore 12
    //   2110: aload 39
    //   2112: astore 13
    //   2114: aload 18
    //   2116: astore 28
    //   2118: aload 6
    //   2120: astore 21
    //   2122: aload 9
    //   2124: astore 25
    //   2126: aload 35
    //   2128: astore 14
    //   2130: aload 40
    //   2132: astore 15
    //   2134: aload 18
    //   2136: astore 29
    //   2138: aload 6
    //   2140: astore 22
    //   2142: aload 9
    //   2144: astore 26
    //   2146: aload 36
    //   2148: astore 16
    //   2150: aload 41
    //   2152: astore 17
    //   2154: aload 18
    //   2156: astore 30
    //   2158: aload 6
    //   2160: astore 5
    //   2162: aload 9
    //   2164: astore 7
    //   2166: aload 37
    //   2168: astore_1
    //   2169: aload 42
    //   2171: astore_2
    //   2172: aload 18
    //   2174: astore 8
    //   2176: aload 6
    //   2178: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   2181: astore 43
    //   2183: aload 6
    //   2185: astore 19
    //   2187: aload 9
    //   2189: astore 23
    //   2191: aload 31
    //   2193: astore 10
    //   2195: aload 38
    //   2197: astore 11
    //   2199: aload 18
    //   2201: astore 27
    //   2203: aload 6
    //   2205: astore 20
    //   2207: aload 9
    //   2209: astore 24
    //   2211: aload 34
    //   2213: astore 12
    //   2215: aload 39
    //   2217: astore 13
    //   2219: aload 18
    //   2221: astore 28
    //   2223: aload 6
    //   2225: astore 21
    //   2227: aload 9
    //   2229: astore 25
    //   2231: aload 35
    //   2233: astore 14
    //   2235: aload 40
    //   2237: astore 15
    //   2239: aload 18
    //   2241: astore 29
    //   2243: aload 6
    //   2245: astore 22
    //   2247: aload 9
    //   2249: astore 26
    //   2251: aload 36
    //   2253: astore 16
    //   2255: aload 41
    //   2257: astore 17
    //   2259: aload 18
    //   2261: astore 30
    //   2263: aload 6
    //   2265: astore 5
    //   2267: aload 9
    //   2269: astore 7
    //   2271: aload 37
    //   2273: astore_1
    //   2274: aload 42
    //   2276: astore_2
    //   2277: aload 18
    //   2279: astore 8
    //   2281: aload 43
    //   2283: invokestatic 218	org/apache/cordova/FileTransfer:access$000	(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    //   2286: astore_3
    //   2287: aload 6
    //   2289: astore 19
    //   2291: aload 9
    //   2293: astore 23
    //   2295: aload 31
    //   2297: astore 10
    //   2299: aload_3
    //   2300: astore 11
    //   2302: aload 18
    //   2304: astore 27
    //   2306: aload 6
    //   2308: astore 20
    //   2310: aload 9
    //   2312: astore 24
    //   2314: aload 34
    //   2316: astore 12
    //   2318: aload_3
    //   2319: astore 13
    //   2321: aload 18
    //   2323: astore 28
    //   2325: aload 6
    //   2327: astore 21
    //   2329: aload 9
    //   2331: astore 25
    //   2333: aload 35
    //   2335: astore 14
    //   2337: aload_3
    //   2338: astore 15
    //   2340: aload 18
    //   2342: astore 29
    //   2344: aload 6
    //   2346: astore 22
    //   2348: aload 9
    //   2350: astore 26
    //   2352: aload 36
    //   2354: astore 16
    //   2356: aload_3
    //   2357: astore 17
    //   2359: aload 18
    //   2361: astore 30
    //   2363: aload 6
    //   2365: astore 5
    //   2367: aload 9
    //   2369: astore 7
    //   2371: aload 37
    //   2373: astore_1
    //   2374: aload_3
    //   2375: astore_2
    //   2376: aload 18
    //   2378: astore 8
    //   2380: aload 43
    //   2382: invokevirtual 222	javax/net/ssl/HttpsURLConnection:getHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
    //   2385: astore 4
    //   2387: aload 6
    //   2389: astore 19
    //   2391: aload 9
    //   2393: astore 23
    //   2395: aload 4
    //   2397: astore 10
    //   2399: aload_3
    //   2400: astore 11
    //   2402: aload 18
    //   2404: astore 27
    //   2406: aload 6
    //   2408: astore 20
    //   2410: aload 9
    //   2412: astore 24
    //   2414: aload 4
    //   2416: astore 12
    //   2418: aload_3
    //   2419: astore 13
    //   2421: aload 18
    //   2423: astore 28
    //   2425: aload 6
    //   2427: astore 21
    //   2429: aload 9
    //   2431: astore 25
    //   2433: aload 4
    //   2435: astore 14
    //   2437: aload_3
    //   2438: astore 15
    //   2440: aload 18
    //   2442: astore 29
    //   2444: aload 6
    //   2446: astore 22
    //   2448: aload 9
    //   2450: astore 26
    //   2452: aload 4
    //   2454: astore 16
    //   2456: aload_3
    //   2457: astore 17
    //   2459: aload 18
    //   2461: astore 30
    //   2463: aload 6
    //   2465: astore 5
    //   2467: aload 9
    //   2469: astore 7
    //   2471: aload 4
    //   2473: astore_1
    //   2474: aload_3
    //   2475: astore_2
    //   2476: aload 18
    //   2478: astore 8
    //   2480: aload 43
    //   2482: invokestatic 225	org/apache/cordova/FileTransfer:access$100	()Ljavax/net/ssl/HostnameVerifier;
    //   2485: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   2488: aload 6
    //   2490: astore 19
    //   2492: aload 9
    //   2494: astore 23
    //   2496: aload 4
    //   2498: astore 10
    //   2500: aload_3
    //   2501: astore 11
    //   2503: aload 18
    //   2505: astore 27
    //   2507: aload 6
    //   2509: astore 20
    //   2511: aload 9
    //   2513: astore 24
    //   2515: aload 4
    //   2517: astore 12
    //   2519: aload_3
    //   2520: astore 13
    //   2522: aload 18
    //   2524: astore 28
    //   2526: aload 6
    //   2528: astore 21
    //   2530: aload 9
    //   2532: astore 25
    //   2534: aload 4
    //   2536: astore 14
    //   2538: aload_3
    //   2539: astore 15
    //   2541: aload 18
    //   2543: astore 29
    //   2545: aload 6
    //   2547: astore 22
    //   2549: aload 9
    //   2551: astore 26
    //   2553: aload 4
    //   2555: astore 16
    //   2557: aload_3
    //   2558: astore 17
    //   2560: aload 18
    //   2562: astore 30
    //   2564: aload 6
    //   2566: astore 5
    //   2568: aload 9
    //   2570: astore 7
    //   2572: aload 4
    //   2574: astore_1
    //   2575: aload_3
    //   2576: astore_2
    //   2577: aload 18
    //   2579: astore 8
    //   2581: aload 6
    //   2583: ldc -29
    //   2585: invokevirtual 233	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   2588: aload 6
    //   2590: astore 19
    //   2592: aload 9
    //   2594: astore 23
    //   2596: aload 4
    //   2598: astore 10
    //   2600: aload_3
    //   2601: astore 11
    //   2603: aload 18
    //   2605: astore 27
    //   2607: aload 6
    //   2609: astore 20
    //   2611: aload 9
    //   2613: astore 24
    //   2615: aload 4
    //   2617: astore 12
    //   2619: aload_3
    //   2620: astore 13
    //   2622: aload 18
    //   2624: astore 28
    //   2626: aload 6
    //   2628: astore 21
    //   2630: aload 9
    //   2632: astore 25
    //   2634: aload 4
    //   2636: astore 14
    //   2638: aload_3
    //   2639: astore 15
    //   2641: aload 18
    //   2643: astore 29
    //   2645: aload 6
    //   2647: astore 22
    //   2649: aload 9
    //   2651: astore 26
    //   2653: aload 4
    //   2655: astore 16
    //   2657: aload_3
    //   2658: astore 17
    //   2660: aload 18
    //   2662: astore 30
    //   2664: aload 6
    //   2666: astore 5
    //   2668: aload 9
    //   2670: astore 7
    //   2672: aload 4
    //   2674: astore_1
    //   2675: aload_3
    //   2676: astore_2
    //   2677: aload 18
    //   2679: astore 8
    //   2681: invokestatic 239	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   2684: aload_0
    //   2685: getfield 42	org/apache/cordova/FileTransfer$4:val$sourceUri	Landroid/net/Uri;
    //   2688: invokevirtual 242	android/net/Uri:toString	()Ljava/lang/String;
    //   2691: invokevirtual 246	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
    //   2694: astore 31
    //   2696: aload 31
    //   2698: ifnull +105 -> 2803
    //   2701: aload 6
    //   2703: astore 19
    //   2705: aload 9
    //   2707: astore 23
    //   2709: aload 4
    //   2711: astore 10
    //   2713: aload_3
    //   2714: astore 11
    //   2716: aload 18
    //   2718: astore 27
    //   2720: aload 6
    //   2722: astore 20
    //   2724: aload 9
    //   2726: astore 24
    //   2728: aload 4
    //   2730: astore 12
    //   2732: aload_3
    //   2733: astore 13
    //   2735: aload 18
    //   2737: astore 28
    //   2739: aload 6
    //   2741: astore 21
    //   2743: aload 9
    //   2745: astore 25
    //   2747: aload 4
    //   2749: astore 14
    //   2751: aload_3
    //   2752: astore 15
    //   2754: aload 18
    //   2756: astore 29
    //   2758: aload 6
    //   2760: astore 22
    //   2762: aload 9
    //   2764: astore 26
    //   2766: aload 4
    //   2768: astore 16
    //   2770: aload_3
    //   2771: astore 17
    //   2773: aload 18
    //   2775: astore 30
    //   2777: aload 6
    //   2779: astore 5
    //   2781: aload 9
    //   2783: astore 7
    //   2785: aload 4
    //   2787: astore_1
    //   2788: aload_3
    //   2789: astore_2
    //   2790: aload 18
    //   2792: astore 8
    //   2794: aload 6
    //   2796: ldc -8
    //   2798: aload 31
    //   2800: invokevirtual 252	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   2803: aload 6
    //   2805: astore 19
    //   2807: aload 9
    //   2809: astore 23
    //   2811: aload 4
    //   2813: astore 10
    //   2815: aload_3
    //   2816: astore 11
    //   2818: aload 18
    //   2820: astore 27
    //   2822: aload 6
    //   2824: astore 20
    //   2826: aload 9
    //   2828: astore 24
    //   2830: aload 4
    //   2832: astore 12
    //   2834: aload_3
    //   2835: astore 13
    //   2837: aload 18
    //   2839: astore 28
    //   2841: aload 6
    //   2843: astore 21
    //   2845: aload 9
    //   2847: astore 25
    //   2849: aload 4
    //   2851: astore 14
    //   2853: aload_3
    //   2854: astore 15
    //   2856: aload 18
    //   2858: astore 29
    //   2860: aload 6
    //   2862: astore 22
    //   2864: aload 9
    //   2866: astore 26
    //   2868: aload 4
    //   2870: astore 16
    //   2872: aload_3
    //   2873: astore 17
    //   2875: aload 18
    //   2877: astore 30
    //   2879: aload 6
    //   2881: astore 5
    //   2883: aload 9
    //   2885: astore 7
    //   2887: aload 4
    //   2889: astore_1
    //   2890: aload_3
    //   2891: astore_2
    //   2892: aload 18
    //   2894: astore 8
    //   2896: aload 6
    //   2898: ldc -2
    //   2900: ldc_w 256
    //   2903: invokevirtual 252	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   2906: aload 6
    //   2908: astore 19
    //   2910: aload 9
    //   2912: astore 23
    //   2914: aload 4
    //   2916: astore 10
    //   2918: aload_3
    //   2919: astore 11
    //   2921: aload 18
    //   2923: astore 27
    //   2925: aload 6
    //   2927: astore 20
    //   2929: aload 9
    //   2931: astore 24
    //   2933: aload 4
    //   2935: astore 12
    //   2937: aload_3
    //   2938: astore 13
    //   2940: aload 18
    //   2942: astore 28
    //   2944: aload 6
    //   2946: astore 21
    //   2948: aload 9
    //   2950: astore 25
    //   2952: aload 4
    //   2954: astore 14
    //   2956: aload_3
    //   2957: astore 15
    //   2959: aload 18
    //   2961: astore 29
    //   2963: aload 6
    //   2965: astore 22
    //   2967: aload 9
    //   2969: astore 26
    //   2971: aload 4
    //   2973: astore 16
    //   2975: aload_3
    //   2976: astore 17
    //   2978: aload 18
    //   2980: astore 30
    //   2982: aload 6
    //   2984: astore 5
    //   2986: aload 9
    //   2988: astore 7
    //   2990: aload 4
    //   2992: astore_1
    //   2993: aload_3
    //   2994: astore_2
    //   2995: aload 18
    //   2997: astore 8
    //   2999: aload_0
    //   3000: getfield 50	org/apache/cordova/FileTransfer$4:val$headers	Lorg/json/JSONObject;
    //   3003: ifnull +105 -> 3108
    //   3006: aload 6
    //   3008: astore 19
    //   3010: aload 9
    //   3012: astore 23
    //   3014: aload 4
    //   3016: astore 10
    //   3018: aload_3
    //   3019: astore 11
    //   3021: aload 18
    //   3023: astore 27
    //   3025: aload 6
    //   3027: astore 20
    //   3029: aload 9
    //   3031: astore 24
    //   3033: aload 4
    //   3035: astore 12
    //   3037: aload_3
    //   3038: astore 13
    //   3040: aload 18
    //   3042: astore 28
    //   3044: aload 6
    //   3046: astore 21
    //   3048: aload 9
    //   3050: astore 25
    //   3052: aload 4
    //   3054: astore 14
    //   3056: aload_3
    //   3057: astore 15
    //   3059: aload 18
    //   3061: astore 29
    //   3063: aload 6
    //   3065: astore 22
    //   3067: aload 9
    //   3069: astore 26
    //   3071: aload 4
    //   3073: astore 16
    //   3075: aload_3
    //   3076: astore 17
    //   3078: aload 18
    //   3080: astore 30
    //   3082: aload 6
    //   3084: astore 5
    //   3086: aload 9
    //   3088: astore 7
    //   3090: aload 4
    //   3092: astore_1
    //   3093: aload_3
    //   3094: astore_2
    //   3095: aload 18
    //   3097: astore 8
    //   3099: aload 6
    //   3101: aload_0
    //   3102: getfield 50	org/apache/cordova/FileTransfer$4:val$headers	Lorg/json/JSONObject;
    //   3105: invokestatic 260	org/apache/cordova/FileTransfer:access$200	(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    //   3108: aload 6
    //   3110: astore 19
    //   3112: aload 9
    //   3114: astore 23
    //   3116: aload 4
    //   3118: astore 10
    //   3120: aload_3
    //   3121: astore 11
    //   3123: aload 18
    //   3125: astore 27
    //   3127: aload 6
    //   3129: astore 20
    //   3131: aload 9
    //   3133: astore 24
    //   3135: aload 4
    //   3137: astore 12
    //   3139: aload_3
    //   3140: astore 13
    //   3142: aload 18
    //   3144: astore 28
    //   3146: aload 6
    //   3148: astore 21
    //   3150: aload 9
    //   3152: astore 25
    //   3154: aload 4
    //   3156: astore 14
    //   3158: aload_3
    //   3159: astore 15
    //   3161: aload 18
    //   3163: astore 29
    //   3165: aload 6
    //   3167: astore 22
    //   3169: aload 9
    //   3171: astore 26
    //   3173: aload 4
    //   3175: astore 16
    //   3177: aload_3
    //   3178: astore 17
    //   3180: aload 18
    //   3182: astore 30
    //   3184: aload 6
    //   3186: astore 5
    //   3188: aload 9
    //   3190: astore 7
    //   3192: aload 4
    //   3194: astore_1
    //   3195: aload_3
    //   3196: astore_2
    //   3197: aload 18
    //   3199: astore 8
    //   3201: aload 6
    //   3203: invokevirtual 263	java/net/HttpURLConnection:connect	()V
    //   3206: aload 6
    //   3208: astore 19
    //   3210: aload 9
    //   3212: astore 23
    //   3214: aload 4
    //   3216: astore 10
    //   3218: aload_3
    //   3219: astore 11
    //   3221: aload 18
    //   3223: astore 27
    //   3225: aload 6
    //   3227: astore 20
    //   3229: aload 9
    //   3231: astore 24
    //   3233: aload 4
    //   3235: astore 12
    //   3237: aload_3
    //   3238: astore 13
    //   3240: aload 18
    //   3242: astore 28
    //   3244: aload 6
    //   3246: astore 21
    //   3248: aload 9
    //   3250: astore 25
    //   3252: aload 4
    //   3254: astore 14
    //   3256: aload_3
    //   3257: astore 15
    //   3259: aload 18
    //   3261: astore 29
    //   3263: aload 6
    //   3265: astore 22
    //   3267: aload 9
    //   3269: astore 26
    //   3271: aload 4
    //   3273: astore 16
    //   3275: aload_3
    //   3276: astore 17
    //   3278: aload 18
    //   3280: astore 30
    //   3282: aload 6
    //   3284: astore 5
    //   3286: aload 9
    //   3288: astore 7
    //   3290: aload 4
    //   3292: astore_1
    //   3293: aload_3
    //   3294: astore_2
    //   3295: aload 18
    //   3297: astore 8
    //   3299: aload 6
    //   3301: invokevirtual 266	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
    //   3304: ifnull +110 -> 3414
    //   3307: aload 6
    //   3309: astore 19
    //   3311: aload 9
    //   3313: astore 23
    //   3315: aload 4
    //   3317: astore 10
    //   3319: aload_3
    //   3320: astore 11
    //   3322: aload 18
    //   3324: astore 27
    //   3326: aload 6
    //   3328: astore 20
    //   3330: aload 9
    //   3332: astore 24
    //   3334: aload 4
    //   3336: astore 12
    //   3338: aload_3
    //   3339: astore 13
    //   3341: aload 18
    //   3343: astore 28
    //   3345: aload 6
    //   3347: astore 21
    //   3349: aload 9
    //   3351: astore 25
    //   3353: aload 4
    //   3355: astore 14
    //   3357: aload_3
    //   3358: astore 15
    //   3360: aload 18
    //   3362: astore 29
    //   3364: aload 6
    //   3366: astore 22
    //   3368: aload 9
    //   3370: astore 26
    //   3372: aload 4
    //   3374: astore 16
    //   3376: aload_3
    //   3377: astore 17
    //   3379: aload 18
    //   3381: astore 30
    //   3383: aload 6
    //   3385: astore 5
    //   3387: aload 9
    //   3389: astore 7
    //   3391: aload 4
    //   3393: astore_1
    //   3394: aload_3
    //   3395: astore_2
    //   3396: aload 18
    //   3398: astore 8
    //   3400: aload 6
    //   3402: invokevirtual 266	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
    //   3405: ldc_w 256
    //   3408: invokevirtual 272	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   3411: ifeq +206 -> 3617
    //   3414: aload 6
    //   3416: astore 19
    //   3418: aload 9
    //   3420: astore 23
    //   3422: aload 4
    //   3424: astore 10
    //   3426: aload_3
    //   3427: astore 11
    //   3429: aload 18
    //   3431: astore 27
    //   3433: aload 6
    //   3435: astore 20
    //   3437: aload 9
    //   3439: astore 24
    //   3441: aload 4
    //   3443: astore 12
    //   3445: aload_3
    //   3446: astore 13
    //   3448: aload 18
    //   3450: astore 28
    //   3452: aload 6
    //   3454: astore 21
    //   3456: aload 9
    //   3458: astore 25
    //   3460: aload 4
    //   3462: astore 14
    //   3464: aload_3
    //   3465: astore 15
    //   3467: aload 18
    //   3469: astore 29
    //   3471: aload 6
    //   3473: astore 22
    //   3475: aload 9
    //   3477: astore 26
    //   3479: aload 4
    //   3481: astore 16
    //   3483: aload_3
    //   3484: astore 17
    //   3486: aload 18
    //   3488: astore 30
    //   3490: aload 6
    //   3492: astore 5
    //   3494: aload 9
    //   3496: astore 7
    //   3498: aload 4
    //   3500: astore_1
    //   3501: aload_3
    //   3502: astore_2
    //   3503: aload 18
    //   3505: astore 8
    //   3507: aload 50
    //   3509: iconst_1
    //   3510: invokevirtual 131	org/apache/cordova/FileProgressResult:setLengthComputable	(Z)V
    //   3513: aload 6
    //   3515: astore 19
    //   3517: aload 9
    //   3519: astore 23
    //   3521: aload 4
    //   3523: astore 10
    //   3525: aload_3
    //   3526: astore 11
    //   3528: aload 18
    //   3530: astore 27
    //   3532: aload 6
    //   3534: astore 20
    //   3536: aload 9
    //   3538: astore 24
    //   3540: aload 4
    //   3542: astore 12
    //   3544: aload_3
    //   3545: astore 13
    //   3547: aload 18
    //   3549: astore 28
    //   3551: aload 6
    //   3553: astore 21
    //   3555: aload 9
    //   3557: astore 25
    //   3559: aload 4
    //   3561: astore 14
    //   3563: aload_3
    //   3564: astore 15
    //   3566: aload 18
    //   3568: astore 29
    //   3570: aload 6
    //   3572: astore 22
    //   3574: aload 9
    //   3576: astore 26
    //   3578: aload 4
    //   3580: astore 16
    //   3582: aload_3
    //   3583: astore 17
    //   3585: aload 18
    //   3587: astore 30
    //   3589: aload 6
    //   3591: astore 5
    //   3593: aload 9
    //   3595: astore 7
    //   3597: aload 4
    //   3599: astore_1
    //   3600: aload_3
    //   3601: astore_2
    //   3602: aload 18
    //   3604: astore 8
    //   3606: aload 50
    //   3608: aload 6
    //   3610: invokevirtual 275	java/net/HttpURLConnection:getContentLength	()I
    //   3613: i2l
    //   3614: invokevirtual 135	org/apache/cordova/FileProgressResult:setTotal	(J)V
    //   3617: aload 6
    //   3619: astore 19
    //   3621: aload 9
    //   3623: astore 23
    //   3625: aload 4
    //   3627: astore 10
    //   3629: aload_3
    //   3630: astore 11
    //   3632: aload 18
    //   3634: astore 27
    //   3636: aload 6
    //   3638: astore 20
    //   3640: aload 9
    //   3642: astore 24
    //   3644: aload 4
    //   3646: astore 12
    //   3648: aload_3
    //   3649: astore 13
    //   3651: aload 18
    //   3653: astore 28
    //   3655: aload 6
    //   3657: astore 21
    //   3659: aload 9
    //   3661: astore 25
    //   3663: aload 4
    //   3665: astore 14
    //   3667: aload_3
    //   3668: astore 15
    //   3670: aload 18
    //   3672: astore 29
    //   3674: aload 6
    //   3676: astore 22
    //   3678: aload 9
    //   3680: astore 26
    //   3682: aload 4
    //   3684: astore 16
    //   3686: aload_3
    //   3687: astore 17
    //   3689: aload 18
    //   3691: astore 30
    //   3693: aload 6
    //   3695: astore 5
    //   3697: aload 9
    //   3699: astore 7
    //   3701: aload 4
    //   3703: astore_1
    //   3704: aload_3
    //   3705: astore_2
    //   3706: aload 18
    //   3708: astore 8
    //   3710: aload 6
    //   3712: invokestatic 279	org/apache/cordova/FileTransfer:access$400	(Ljava/net/URLConnection;)Lorg/apache/cordova/FileTransfer$TrackingInputStream;
    //   3715: astore 31
    //   3717: goto -2419 -> 1298
    //   3720: aload_0
    //   3721: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   3724: aload 31
    //   3726: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   3729: aload_1
    //   3730: monitorexit
    //   3731: sipush 16384
    //   3734: newarray <illegal type>
    //   3736: astore_1
    //   3737: aload 31
    //   3739: aload_1
    //   3740: invokevirtual 285	org/apache/cordova/FileTransfer$TrackingInputStream:read	([B)I
    //   3743: istore 54
    //   3745: iload 54
    //   3747: ifle +676 -> 4423
    //   3750: aload 18
    //   3752: aload_1
    //   3753: iconst_0
    //   3754: iload 54
    //   3756: invokevirtual 291	java/io/OutputStream:write	([BII)V
    //   3759: aload 50
    //   3761: aload 31
    //   3763: invokevirtual 295	org/apache/cordova/FileTransfer$TrackingInputStream:getTotalRawBytesRead	()J
    //   3766: invokevirtual 298	org/apache/cordova/FileProgressResult:setLoaded	(J)V
    //   3769: new 173	org/apache/cordova/api/PluginResult
    //   3772: dup
    //   3773: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   3776: aload 50
    //   3778: invokevirtual 302	org/apache/cordova/FileProgressResult:toJSONObject	()Lorg/json/JSONObject;
    //   3781: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   3784: astore_2
    //   3785: aload_2
    //   3786: iconst_1
    //   3787: invokevirtual 305	org/apache/cordova/api/PluginResult:setKeepCallback	(Z)V
    //   3790: aload_0
    //   3791: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   3794: aload_2
    //   3795: invokevirtual 210	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   3798: goto -61 -> 3737
    //   3801: astore 33
    //   3803: aload 6
    //   3805: astore 19
    //   3807: aload 9
    //   3809: astore 23
    //   3811: aload 4
    //   3813: astore 10
    //   3815: aload_3
    //   3816: astore 11
    //   3818: aload 18
    //   3820: astore 27
    //   3822: aload 6
    //   3824: astore 20
    //   3826: aload 9
    //   3828: astore 24
    //   3830: aload 4
    //   3832: astore 12
    //   3834: aload_3
    //   3835: astore 13
    //   3837: aload 18
    //   3839: astore 28
    //   3841: aload 6
    //   3843: astore 21
    //   3845: aload 9
    //   3847: astore 25
    //   3849: aload 4
    //   3851: astore 14
    //   3853: aload_3
    //   3854: astore 15
    //   3856: aload 18
    //   3858: astore 29
    //   3860: aload 6
    //   3862: astore 22
    //   3864: aload 9
    //   3866: astore 26
    //   3868: aload 4
    //   3870: astore 16
    //   3872: aload_3
    //   3873: astore 17
    //   3875: aload 18
    //   3877: astore 30
    //   3879: aload 6
    //   3881: astore 5
    //   3883: aload 9
    //   3885: astore 7
    //   3887: aload 4
    //   3889: astore_1
    //   3890: aload_3
    //   3891: astore_2
    //   3892: aload 18
    //   3894: astore 8
    //   3896: aload_0
    //   3897: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   3900: aconst_null
    //   3901: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   3904: aload 6
    //   3906: astore 19
    //   3908: aload 9
    //   3910: astore 23
    //   3912: aload 4
    //   3914: astore 10
    //   3916: aload_3
    //   3917: astore 11
    //   3919: aload 18
    //   3921: astore 27
    //   3923: aload 6
    //   3925: astore 20
    //   3927: aload 9
    //   3929: astore 24
    //   3931: aload 4
    //   3933: astore 12
    //   3935: aload_3
    //   3936: astore 13
    //   3938: aload 18
    //   3940: astore 28
    //   3942: aload 6
    //   3944: astore 21
    //   3946: aload 9
    //   3948: astore 25
    //   3950: aload 4
    //   3952: astore 14
    //   3954: aload_3
    //   3955: astore 15
    //   3957: aload 18
    //   3959: astore 29
    //   3961: aload 6
    //   3963: astore 22
    //   3965: aload 9
    //   3967: astore 26
    //   3969: aload 4
    //   3971: astore 16
    //   3973: aload_3
    //   3974: astore 17
    //   3976: aload 18
    //   3978: astore 30
    //   3980: aload 6
    //   3982: astore 5
    //   3984: aload 9
    //   3986: astore 7
    //   3988: aload 4
    //   3990: astore_1
    //   3991: aload_3
    //   3992: astore_2
    //   3993: aload 18
    //   3995: astore 8
    //   3997: aload 31
    //   3999: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4002: aload 6
    //   4004: astore 19
    //   4006: aload 9
    //   4008: astore 23
    //   4010: aload 4
    //   4012: astore 10
    //   4014: aload_3
    //   4015: astore 11
    //   4017: aload 18
    //   4019: astore 27
    //   4021: aload 6
    //   4023: astore 20
    //   4025: aload 9
    //   4027: astore 24
    //   4029: aload 4
    //   4031: astore 12
    //   4033: aload_3
    //   4034: astore 13
    //   4036: aload 18
    //   4038: astore 28
    //   4040: aload 6
    //   4042: astore 21
    //   4044: aload 9
    //   4046: astore 25
    //   4048: aload 4
    //   4050: astore 14
    //   4052: aload_3
    //   4053: astore 15
    //   4055: aload 18
    //   4057: astore 29
    //   4059: aload 6
    //   4061: astore 22
    //   4063: aload 9
    //   4065: astore 26
    //   4067: aload 4
    //   4069: astore 16
    //   4071: aload_3
    //   4072: astore 17
    //   4074: aload 18
    //   4076: astore 30
    //   4078: aload 6
    //   4080: astore 5
    //   4082: aload 9
    //   4084: astore 7
    //   4086: aload 4
    //   4088: astore_1
    //   4089: aload_3
    //   4090: astore_2
    //   4091: aload 18
    //   4093: astore 8
    //   4095: aload 18
    //   4097: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4100: aload 6
    //   4102: astore 19
    //   4104: aload 9
    //   4106: astore 23
    //   4108: aload 4
    //   4110: astore 10
    //   4112: aload_3
    //   4113: astore 11
    //   4115: aload 18
    //   4117: astore 27
    //   4119: aload 6
    //   4121: astore 20
    //   4123: aload 9
    //   4125: astore 24
    //   4127: aload 4
    //   4129: astore 12
    //   4131: aload_3
    //   4132: astore 13
    //   4134: aload 18
    //   4136: astore 28
    //   4138: aload 6
    //   4140: astore 21
    //   4142: aload 9
    //   4144: astore 25
    //   4146: aload 4
    //   4148: astore 14
    //   4150: aload_3
    //   4151: astore 15
    //   4153: aload 18
    //   4155: astore 29
    //   4157: aload 6
    //   4159: astore 22
    //   4161: aload 9
    //   4163: astore 26
    //   4165: aload 4
    //   4167: astore 16
    //   4169: aload_3
    //   4170: astore 17
    //   4172: aload 18
    //   4174: astore 30
    //   4176: aload 6
    //   4178: astore 5
    //   4180: aload 9
    //   4182: astore 7
    //   4184: aload 4
    //   4186: astore_1
    //   4187: aload_3
    //   4188: astore_2
    //   4189: aload 18
    //   4191: astore 8
    //   4193: aload 33
    //   4195: athrow
    //   4196: astore_3
    //   4197: aload 19
    //   4199: astore 5
    //   4201: aload 23
    //   4203: astore 7
    //   4205: aload 10
    //   4207: astore_1
    //   4208: aload 11
    //   4210: astore_2
    //   4211: aload 27
    //   4213: astore 8
    //   4215: getstatic 308	org/apache/cordova/FileTransfer:FILE_NOT_FOUND_ERR	I
    //   4218: aload_0
    //   4219: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   4222: aload_0
    //   4223: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   4226: aload 19
    //   4228: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   4231: astore 4
    //   4233: aload 19
    //   4235: astore 5
    //   4237: aload 23
    //   4239: astore 7
    //   4241: aload 10
    //   4243: astore_1
    //   4244: aload 11
    //   4246: astore_2
    //   4247: aload 27
    //   4249: astore 8
    //   4251: ldc 90
    //   4253: aload 4
    //   4255: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
    //   4258: aload_3
    //   4259: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   4262: pop
    //   4263: aload 19
    //   4265: astore 5
    //   4267: aload 23
    //   4269: astore 7
    //   4271: aload 10
    //   4273: astore_1
    //   4274: aload 11
    //   4276: astore_2
    //   4277: aload 27
    //   4279: astore 8
    //   4281: new 173	org/apache/cordova/api/PluginResult
    //   4284: dup
    //   4285: getstatic 318	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   4288: aload 4
    //   4290: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   4293: astore_3
    //   4294: aload 27
    //   4296: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4299: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   4302: astore_1
    //   4303: aload_1
    //   4304: monitorenter
    //   4305: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   4308: aload_0
    //   4309: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   4312: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4315: pop
    //   4316: aload_1
    //   4317: monitorexit
    //   4318: aload 19
    //   4320: ifnull +35 -> 4355
    //   4323: aload_0
    //   4324: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   4327: ifeq +28 -> 4355
    //   4330: aload_0
    //   4331: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   4334: ifeq +21 -> 4355
    //   4337: aload 19
    //   4339: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   4342: astore_1
    //   4343: aload_1
    //   4344: aload 10
    //   4346: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   4349: aload_1
    //   4350: aload 11
    //   4352: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   4355: aload_3
    //   4356: ifnonnull +1635 -> 5991
    //   4359: new 173	org/apache/cordova/api/PluginResult
    //   4362: dup
    //   4363: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   4366: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   4369: aload_0
    //   4370: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   4373: aload_0
    //   4374: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   4377: aload 19
    //   4379: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   4382: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   4385: astore_1
    //   4386: aload_1
    //   4387: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   4390: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   4393: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   4396: if_icmpeq +14 -> 4410
    //   4399: aload 23
    //   4401: ifnull +9 -> 4410
    //   4404: aload 23
    //   4406: invokevirtual 206	java/io/File:delete	()Z
    //   4409: pop
    //   4410: aload_0
    //   4411: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4414: astore_2
    //   4415: goto -2678 -> 1737
    //   4418: astore_2
    //   4419: aload_1
    //   4420: monitorexit
    //   4421: aload_2
    //   4422: athrow
    //   4423: aload 6
    //   4425: astore 19
    //   4427: aload 9
    //   4429: astore 23
    //   4431: aload 4
    //   4433: astore 10
    //   4435: aload_3
    //   4436: astore 11
    //   4438: aload 18
    //   4440: astore 27
    //   4442: aload 6
    //   4444: astore 20
    //   4446: aload 9
    //   4448: astore 24
    //   4450: aload 4
    //   4452: astore 12
    //   4454: aload_3
    //   4455: astore 13
    //   4457: aload 18
    //   4459: astore 28
    //   4461: aload 6
    //   4463: astore 21
    //   4465: aload 9
    //   4467: astore 25
    //   4469: aload 4
    //   4471: astore 14
    //   4473: aload_3
    //   4474: astore 15
    //   4476: aload 18
    //   4478: astore 29
    //   4480: aload 6
    //   4482: astore 22
    //   4484: aload 9
    //   4486: astore 26
    //   4488: aload 4
    //   4490: astore 16
    //   4492: aload_3
    //   4493: astore 17
    //   4495: aload 18
    //   4497: astore 30
    //   4499: aload 6
    //   4501: astore 5
    //   4503: aload 9
    //   4505: astore 7
    //   4507: aload 4
    //   4509: astore_1
    //   4510: aload_3
    //   4511: astore_2
    //   4512: aload 18
    //   4514: astore 8
    //   4516: aload_0
    //   4517: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   4520: aconst_null
    //   4521: putfield 147	org/apache/cordova/FileTransfer$RequestContext:currentInputStream	Ljava/io/InputStream;
    //   4524: aload 6
    //   4526: astore 19
    //   4528: aload 9
    //   4530: astore 23
    //   4532: aload 4
    //   4534: astore 10
    //   4536: aload_3
    //   4537: astore 11
    //   4539: aload 18
    //   4541: astore 27
    //   4543: aload 6
    //   4545: astore 20
    //   4547: aload 9
    //   4549: astore 24
    //   4551: aload 4
    //   4553: astore 12
    //   4555: aload_3
    //   4556: astore 13
    //   4558: aload 18
    //   4560: astore 28
    //   4562: aload 6
    //   4564: astore 21
    //   4566: aload 9
    //   4568: astore 25
    //   4570: aload 4
    //   4572: astore 14
    //   4574: aload_3
    //   4575: astore 15
    //   4577: aload 18
    //   4579: astore 29
    //   4581: aload 6
    //   4583: astore 22
    //   4585: aload 9
    //   4587: astore 26
    //   4589: aload 4
    //   4591: astore 16
    //   4593: aload_3
    //   4594: astore 17
    //   4596: aload 18
    //   4598: astore 30
    //   4600: aload 6
    //   4602: astore 5
    //   4604: aload 9
    //   4606: astore 7
    //   4608: aload 4
    //   4610: astore_1
    //   4611: aload_3
    //   4612: astore_2
    //   4613: aload 18
    //   4615: astore 8
    //   4617: aload 31
    //   4619: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4622: aload 6
    //   4624: astore 19
    //   4626: aload 9
    //   4628: astore 23
    //   4630: aload 4
    //   4632: astore 10
    //   4634: aload_3
    //   4635: astore 11
    //   4637: aload 18
    //   4639: astore 27
    //   4641: aload 6
    //   4643: astore 20
    //   4645: aload 9
    //   4647: astore 24
    //   4649: aload 4
    //   4651: astore 12
    //   4653: aload_3
    //   4654: astore 13
    //   4656: aload 18
    //   4658: astore 28
    //   4660: aload 6
    //   4662: astore 21
    //   4664: aload 9
    //   4666: astore 25
    //   4668: aload 4
    //   4670: astore 14
    //   4672: aload_3
    //   4673: astore 15
    //   4675: aload 18
    //   4677: astore 29
    //   4679: aload 6
    //   4681: astore 22
    //   4683: aload 9
    //   4685: astore 26
    //   4687: aload 4
    //   4689: astore 16
    //   4691: aload_3
    //   4692: astore 17
    //   4694: aload 18
    //   4696: astore 30
    //   4698: aload 6
    //   4700: astore 5
    //   4702: aload 9
    //   4704: astore 7
    //   4706: aload 4
    //   4708: astore_1
    //   4709: aload_3
    //   4710: astore_2
    //   4711: aload 18
    //   4713: astore 8
    //   4715: aload 18
    //   4717: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   4720: aload 6
    //   4722: astore 19
    //   4724: aload 9
    //   4726: astore 23
    //   4728: aload 4
    //   4730: astore 10
    //   4732: aload_3
    //   4733: astore 11
    //   4735: aload 18
    //   4737: astore 27
    //   4739: aload 6
    //   4741: astore 20
    //   4743: aload 9
    //   4745: astore 24
    //   4747: aload 4
    //   4749: astore 12
    //   4751: aload_3
    //   4752: astore 13
    //   4754: aload 18
    //   4756: astore 28
    //   4758: aload 6
    //   4760: astore 21
    //   4762: aload 9
    //   4764: astore 25
    //   4766: aload 4
    //   4768: astore 14
    //   4770: aload_3
    //   4771: astore 15
    //   4773: aload 18
    //   4775: astore 29
    //   4777: aload 6
    //   4779: astore 22
    //   4781: aload 9
    //   4783: astore 26
    //   4785: aload 4
    //   4787: astore 16
    //   4789: aload_3
    //   4790: astore 17
    //   4792: aload 18
    //   4794: astore 30
    //   4796: aload 6
    //   4798: astore 5
    //   4800: aload 9
    //   4802: astore 7
    //   4804: aload 4
    //   4806: astore_1
    //   4807: aload_3
    //   4808: astore_2
    //   4809: aload 18
    //   4811: astore 8
    //   4813: ldc 90
    //   4815: new 92	java/lang/StringBuilder
    //   4818: dup
    //   4819: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   4822: ldc_w 320
    //   4825: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4828: aload_0
    //   4829: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   4832: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   4835: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   4838: invokestatic 112	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   4841: pop
    //   4842: aload 6
    //   4844: astore 19
    //   4846: aload 9
    //   4848: astore 23
    //   4850: aload 4
    //   4852: astore 10
    //   4854: aload_3
    //   4855: astore 11
    //   4857: aload 18
    //   4859: astore 27
    //   4861: aload 6
    //   4863: astore 20
    //   4865: aload 9
    //   4867: astore 24
    //   4869: aload 4
    //   4871: astore 12
    //   4873: aload_3
    //   4874: astore 13
    //   4876: aload 18
    //   4878: astore 28
    //   4880: aload 6
    //   4882: astore 21
    //   4884: aload 9
    //   4886: astore 25
    //   4888: aload 4
    //   4890: astore 14
    //   4892: aload_3
    //   4893: astore 15
    //   4895: aload 18
    //   4897: astore 29
    //   4899: aload 6
    //   4901: astore 22
    //   4903: aload 9
    //   4905: astore 26
    //   4907: aload 4
    //   4909: astore 16
    //   4911: aload_3
    //   4912: astore 17
    //   4914: aload 18
    //   4916: astore 30
    //   4918: aload 6
    //   4920: astore 5
    //   4922: aload 9
    //   4924: astore 7
    //   4926: aload 4
    //   4928: astore_1
    //   4929: aload_3
    //   4930: astore_2
    //   4931: aload 18
    //   4933: astore 8
    //   4935: aload 9
    //   4937: invokestatic 326	org/apache/cordova/FileUtils:getEntry	(Ljava/io/File;)Lorg/json/JSONObject;
    //   4940: astore 31
    //   4942: aload 6
    //   4944: astore 19
    //   4946: aload 9
    //   4948: astore 23
    //   4950: aload 4
    //   4952: astore 10
    //   4954: aload_3
    //   4955: astore 11
    //   4957: aload 18
    //   4959: astore 27
    //   4961: aload 6
    //   4963: astore 20
    //   4965: aload 9
    //   4967: astore 24
    //   4969: aload 4
    //   4971: astore 12
    //   4973: aload_3
    //   4974: astore 13
    //   4976: aload 18
    //   4978: astore 28
    //   4980: aload 6
    //   4982: astore 21
    //   4984: aload 9
    //   4986: astore 25
    //   4988: aload 4
    //   4990: astore 14
    //   4992: aload_3
    //   4993: astore 15
    //   4995: aload 18
    //   4997: astore 29
    //   4999: aload 6
    //   5001: astore 22
    //   5003: aload 9
    //   5005: astore 26
    //   5007: aload 4
    //   5009: astore 16
    //   5011: aload_3
    //   5012: astore 17
    //   5014: aload 18
    //   5016: astore 30
    //   5018: aload 6
    //   5020: astore 5
    //   5022: aload 9
    //   5024: astore 7
    //   5026: aload 4
    //   5028: astore_1
    //   5029: aload_3
    //   5030: astore_2
    //   5031: aload 18
    //   5033: astore 8
    //   5035: new 173	org/apache/cordova/api/PluginResult
    //   5038: dup
    //   5039: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   5042: aload 31
    //   5044: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5047: astore 31
    //   5049: aload 18
    //   5051: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5054: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5057: astore_1
    //   5058: aload_1
    //   5059: monitorenter
    //   5060: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5063: aload_0
    //   5064: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   5067: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5070: pop
    //   5071: aload_1
    //   5072: monitorexit
    //   5073: aload 6
    //   5075: ifnull +34 -> 5109
    //   5078: aload_0
    //   5079: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   5082: ifeq +27 -> 5109
    //   5085: aload_0
    //   5086: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   5089: ifeq +20 -> 5109
    //   5092: aload 6
    //   5094: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   5097: astore_1
    //   5098: aload_1
    //   5099: aload 4
    //   5101: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5104: aload_1
    //   5105: aload_3
    //   5106: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5109: aload 31
    //   5111: ifnonnull +859 -> 5970
    //   5114: new 173	org/apache/cordova/api/PluginResult
    //   5117: dup
    //   5118: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   5121: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5124: aload_0
    //   5125: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5128: aload_0
    //   5129: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5132: aload 6
    //   5134: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5137: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5140: astore_1
    //   5141: aload_1
    //   5142: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   5145: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   5148: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   5151: if_icmpeq +14 -> 5165
    //   5154: aload 9
    //   5156: ifnull +9 -> 5165
    //   5159: aload 9
    //   5161: invokevirtual 206	java/io/File:delete	()Z
    //   5164: pop
    //   5165: aload_0
    //   5166: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5169: astore_2
    //   5170: goto -3433 -> 1737
    //   5173: astore_3
    //   5174: aload 20
    //   5176: astore 5
    //   5178: aload 24
    //   5180: astore 7
    //   5182: aload 12
    //   5184: astore_1
    //   5185: aload 13
    //   5187: astore_2
    //   5188: aload 28
    //   5190: astore 8
    //   5192: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5195: aload_0
    //   5196: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5199: aload_0
    //   5200: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5203: aload 20
    //   5205: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5208: astore 4
    //   5210: aload 20
    //   5212: astore 5
    //   5214: aload 24
    //   5216: astore 7
    //   5218: aload 12
    //   5220: astore_1
    //   5221: aload 13
    //   5223: astore_2
    //   5224: aload 28
    //   5226: astore 8
    //   5228: ldc 90
    //   5230: aload 4
    //   5232: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
    //   5235: aload_3
    //   5236: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   5239: pop
    //   5240: aload 20
    //   5242: astore 5
    //   5244: aload 24
    //   5246: astore 7
    //   5248: aload 12
    //   5250: astore_1
    //   5251: aload 13
    //   5253: astore_2
    //   5254: aload 28
    //   5256: astore 8
    //   5258: new 173	org/apache/cordova/api/PluginResult
    //   5261: dup
    //   5262: getstatic 318	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   5265: aload 4
    //   5267: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5270: astore_3
    //   5271: aload 28
    //   5273: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5276: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5279: astore_1
    //   5280: aload_1
    //   5281: monitorenter
    //   5282: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5285: aload_0
    //   5286: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   5289: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5292: pop
    //   5293: aload_1
    //   5294: monitorexit
    //   5295: aload 20
    //   5297: ifnull +35 -> 5332
    //   5300: aload_0
    //   5301: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   5304: ifeq +28 -> 5332
    //   5307: aload_0
    //   5308: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   5311: ifeq +21 -> 5332
    //   5314: aload 20
    //   5316: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   5319: astore_1
    //   5320: aload_1
    //   5321: aload 12
    //   5323: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5326: aload_1
    //   5327: aload 13
    //   5329: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5332: aload_3
    //   5333: ifnonnull +653 -> 5986
    //   5336: new 173	org/apache/cordova/api/PluginResult
    //   5339: dup
    //   5340: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   5343: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5346: aload_0
    //   5347: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5350: aload_0
    //   5351: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5354: aload 20
    //   5356: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5359: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5362: astore_1
    //   5363: aload_1
    //   5364: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   5367: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   5370: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   5373: if_icmpeq +14 -> 5387
    //   5376: aload 24
    //   5378: ifnull +9 -> 5387
    //   5381: aload 24
    //   5383: invokevirtual 206	java/io/File:delete	()Z
    //   5386: pop
    //   5387: aload_0
    //   5388: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5391: astore_2
    //   5392: goto -3655 -> 1737
    //   5395: astore_3
    //   5396: aload 21
    //   5398: astore 5
    //   5400: aload 25
    //   5402: astore 7
    //   5404: aload 14
    //   5406: astore_1
    //   5407: aload 15
    //   5409: astore_2
    //   5410: aload 29
    //   5412: astore 8
    //   5414: ldc 90
    //   5416: aload_3
    //   5417: invokevirtual 329	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   5420: aload_3
    //   5421: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   5424: pop
    //   5425: aload 21
    //   5427: astore 5
    //   5429: aload 25
    //   5431: astore 7
    //   5433: aload 14
    //   5435: astore_1
    //   5436: aload 15
    //   5438: astore_2
    //   5439: aload 29
    //   5441: astore 8
    //   5443: new 173	org/apache/cordova/api/PluginResult
    //   5446: dup
    //   5447: getstatic 332	org/apache/cordova/api/PluginResult$Status:JSON_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   5450: invokespecial 335	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;)V
    //   5453: astore_3
    //   5454: aload 29
    //   5456: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5459: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5462: astore_1
    //   5463: aload_1
    //   5464: monitorenter
    //   5465: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5468: aload_0
    //   5469: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   5472: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5475: pop
    //   5476: aload_1
    //   5477: monitorexit
    //   5478: aload 21
    //   5480: ifnull +35 -> 5515
    //   5483: aload_0
    //   5484: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   5487: ifeq +28 -> 5515
    //   5490: aload_0
    //   5491: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   5494: ifeq +21 -> 5515
    //   5497: aload 21
    //   5499: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   5502: astore_1
    //   5503: aload_1
    //   5504: aload 14
    //   5506: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5509: aload_1
    //   5510: aload 15
    //   5512: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5515: aload_3
    //   5516: ifnonnull +465 -> 5981
    //   5519: new 173	org/apache/cordova/api/PluginResult
    //   5522: dup
    //   5523: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   5526: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5529: aload_0
    //   5530: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5533: aload_0
    //   5534: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5537: aload 21
    //   5539: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5542: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5545: astore_1
    //   5546: aload_1
    //   5547: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   5550: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   5553: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   5556: if_icmpeq +14 -> 5570
    //   5559: aload 25
    //   5561: ifnull +9 -> 5570
    //   5564: aload 25
    //   5566: invokevirtual 206	java/io/File:delete	()Z
    //   5569: pop
    //   5570: aload_0
    //   5571: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5574: astore_2
    //   5575: goto -3838 -> 1737
    //   5578: astore_3
    //   5579: aload 22
    //   5581: astore 5
    //   5583: aload 26
    //   5585: astore 7
    //   5587: aload 16
    //   5589: astore_1
    //   5590: aload 17
    //   5592: astore_2
    //   5593: aload 30
    //   5595: astore 8
    //   5597: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5600: aload_0
    //   5601: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5604: aload_0
    //   5605: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5608: aload 22
    //   5610: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5613: astore 4
    //   5615: aload 22
    //   5617: astore 5
    //   5619: aload 26
    //   5621: astore 7
    //   5623: aload 16
    //   5625: astore_1
    //   5626: aload 17
    //   5628: astore_2
    //   5629: aload 30
    //   5631: astore 8
    //   5633: ldc 90
    //   5635: aload 4
    //   5637: invokevirtual 311	org/json/JSONObject:toString	()Ljava/lang/String;
    //   5640: aload_3
    //   5641: invokestatic 315	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   5644: pop
    //   5645: aload 22
    //   5647: astore 5
    //   5649: aload 26
    //   5651: astore 7
    //   5653: aload 16
    //   5655: astore_1
    //   5656: aload 17
    //   5658: astore_2
    //   5659: aload 30
    //   5661: astore 8
    //   5663: new 173	org/apache/cordova/api/PluginResult
    //   5666: dup
    //   5667: getstatic 318	org/apache/cordova/api/PluginResult$Status:IO_EXCEPTION	Lorg/apache/cordova/api/PluginResult$Status;
    //   5670: aload 4
    //   5672: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5675: astore_3
    //   5676: aload 30
    //   5678: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5681: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5684: astore_1
    //   5685: aload_1
    //   5686: monitorenter
    //   5687: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5690: aload_0
    //   5691: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   5694: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5697: pop
    //   5698: aload_1
    //   5699: monitorexit
    //   5700: aload 22
    //   5702: ifnull +35 -> 5737
    //   5705: aload_0
    //   5706: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   5709: ifeq +28 -> 5737
    //   5712: aload_0
    //   5713: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   5716: ifeq +21 -> 5737
    //   5719: aload 22
    //   5721: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   5724: astore_1
    //   5725: aload_1
    //   5726: aload 16
    //   5728: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5731: aload_1
    //   5732: aload 17
    //   5734: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5737: aload_3
    //   5738: ifnonnull +238 -> 5976
    //   5741: new 173	org/apache/cordova/api/PluginResult
    //   5744: dup
    //   5745: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   5748: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5751: aload_0
    //   5752: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5755: aload_0
    //   5756: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5759: aload 22
    //   5761: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5764: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5767: astore_1
    //   5768: aload_1
    //   5769: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   5772: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   5775: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   5778: if_icmpeq +14 -> 5792
    //   5781: aload 26
    //   5783: ifnull +9 -> 5792
    //   5786: aload 26
    //   5788: invokevirtual 206	java/io/File:delete	()Z
    //   5791: pop
    //   5792: aload_0
    //   5793: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5796: astore_2
    //   5797: goto -4060 -> 1737
    //   5800: astore_3
    //   5801: aload 8
    //   5803: invokestatic 151	org/apache/cordova/FileTransfer:access$300	(Ljava/io/Closeable;)V
    //   5806: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5809: astore 4
    //   5811: aload 4
    //   5813: monitorenter
    //   5814: invokestatic 155	org/apache/cordova/FileTransfer:access$600	()Ljava/util/HashMap;
    //   5817: aload_0
    //   5818: getfield 56	org/apache/cordova/FileTransfer$4:val$objectId	Ljava/lang/String;
    //   5821: invokevirtual 161	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   5824: pop
    //   5825: aload 4
    //   5827: monitorexit
    //   5828: aload 5
    //   5830: ifnull +36 -> 5866
    //   5833: aload_0
    //   5834: getfield 48	org/apache/cordova/FileTransfer$4:val$trustEveryone	Z
    //   5837: ifeq +29 -> 5866
    //   5840: aload_0
    //   5841: getfield 46	org/apache/cordova/FileTransfer$4:val$useHttps	Z
    //   5844: ifeq +22 -> 5866
    //   5847: aload 5
    //   5849: checkcast 163	javax/net/ssl/HttpsURLConnection
    //   5852: astore 4
    //   5854: aload 4
    //   5856: aload_1
    //   5857: invokevirtual 167	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   5860: aload 4
    //   5862: aload_2
    //   5863: invokevirtual 171	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   5866: aload 32
    //   5868: astore_1
    //   5869: iconst_0
    //   5870: ifne +30 -> 5900
    //   5873: new 173	org/apache/cordova/api/PluginResult
    //   5876: dup
    //   5877: getstatic 179	org/apache/cordova/api/PluginResult$Status:ERROR	Lorg/apache/cordova/api/PluginResult$Status;
    //   5880: getstatic 183	org/apache/cordova/FileTransfer:CONNECTION_ERR	I
    //   5883: aload_0
    //   5884: getfield 54	org/apache/cordova/FileTransfer$4:val$source	Ljava/lang/String;
    //   5887: aload_0
    //   5888: getfield 52	org/apache/cordova/FileTransfer$4:val$target	Ljava/lang/String;
    //   5891: aload 5
    //   5893: invokestatic 187	org/apache/cordova/FileTransfer:access$500	(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    //   5896: invokespecial 190	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    //   5899: astore_1
    //   5900: aload_1
    //   5901: invokevirtual 194	org/apache/cordova/api/PluginResult:getStatus	()I
    //   5904: getstatic 197	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   5907: invokevirtual 200	org/apache/cordova/api/PluginResult$Status:ordinal	()I
    //   5910: if_icmpeq +14 -> 5924
    //   5913: aload 7
    //   5915: ifnull +9 -> 5924
    //   5918: aload 7
    //   5920: invokevirtual 206	java/io/File:delete	()Z
    //   5923: pop
    //   5924: aload_0
    //   5925: getfield 36	org/apache/cordova/FileTransfer$4:val$context	Lorg/apache/cordova/FileTransfer$RequestContext;
    //   5928: aload_1
    //   5929: invokevirtual 210	org/apache/cordova/FileTransfer$RequestContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   5932: aload_3
    //   5933: athrow
    //   5934: astore_1
    //   5935: aload 4
    //   5937: monitorexit
    //   5938: aload_1
    //   5939: athrow
    //   5940: astore_2
    //   5941: aload_1
    //   5942: monitorexit
    //   5943: aload_2
    //   5944: athrow
    //   5945: astore_2
    //   5946: aload_1
    //   5947: monitorexit
    //   5948: aload_2
    //   5949: athrow
    //   5950: astore_2
    //   5951: aload_1
    //   5952: monitorexit
    //   5953: aload_2
    //   5954: athrow
    //   5955: astore_2
    //   5956: aload_1
    //   5957: monitorexit
    //   5958: aload_2
    //   5959: athrow
    //   5960: astore_2
    //   5961: aload_1
    //   5962: monitorexit
    //   5963: aload_2
    //   5964: athrow
    //   5965: astore_2
    //   5966: aload_1
    //   5967: monitorexit
    //   5968: aload_2
    //   5969: athrow
    //   5970: aload 31
    //   5972: astore_1
    //   5973: goto -832 -> 5141
    //   5976: aload_3
    //   5977: astore_1
    //   5978: goto -210 -> 5768
    //   5981: aload_3
    //   5982: astore_1
    //   5983: goto -437 -> 5546
    //   5986: aload_3
    //   5987: astore_1
    //   5988: goto -625 -> 5363
    //   5991: aload_3
    //   5992: astore_1
    //   5993: goto -1607 -> 4386
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	5996	0	this	4
    //   5934	33	1	localObject2	Object
    //   5972	21	1	localObject3	Object
    //   183	4232	2	localObject4	Object
    //   4418	4	2	localObject5	Object
    //   4511	1352	2	localObject6	Object
    //   5940	4	2	localObject7	Object
    //   5945	4	2	localObject8	Object
    //   5950	4	2	localObject9	Object
    //   5955	4	2	localObject10	Object
    //   5960	4	2	localObject11	Object
    //   5965	4	2	localObject12	Object
    //   69	4119	3	localObject13	Object
    //   4196	63	3	localFileNotFoundException	java.io.FileNotFoundException
    //   4293	813	3	localPluginResult1	org.apache.cordova.api.PluginResult
    //   5173	63	3	localIOException	java.io.IOException
    //   5270	63	3	localPluginResult2	org.apache.cordova.api.PluginResult
    //   5395	26	3	localJSONException	org.json.JSONException
    //   5453	63	3	localPluginResult3	org.apache.cordova.api.PluginResult
    //   5578	63	3	localThrowable	Throwable
    //   5675	63	3	localPluginResult4	org.apache.cordova.api.PluginResult
    //   5800	192	3	localObject14	Object
    //   172	5720	5	localObject16	Object
    //   27	5106	6	localObject17	Object
    //   176	5743	7	localObject18	Object
    //   101	5701	8	localObject19	Object
    //   83	5077	9	localFile1	java.io.File
    //   116	4837	10	localObject20	Object
    //   120	4836	11	localObject21	Object
    //   132	5190	12	localObject22	Object
    //   136	5192	13	localObject23	Object
    //   148	5357	14	localObject24	Object
    //   152	5359	15	localObject25	Object
    //   164	5563	16	localObject26	Object
    //   168	5565	17	localObject27	Object
    //   195	4855	18	localOutputStream	java.io.OutputStream
    //   108	4837	19	localObject28	Object
    //   124	5231	20	localObject29	Object
    //   140	5398	21	localObject30	Object
    //   156	5604	22	localObject31	Object
    //   112	4837	23	localFile2	java.io.File
    //   128	5254	24	localObject32	Object
    //   144	5421	25	localObject33	Object
    //   160	5627	26	localObject34	Object
    //   104	4856	27	localObject35	Object
    //   92	5180	28	localObject36	Object
    //   95	5360	29	localObject37	Object
    //   98	5579	30	localObject38	Object
    //   33	5938	31	localObject39	Object
    //   86	5781	32	localObject40	Object
    //   89	1586	33	localObject41	Object
    //   3801	393	33	localObject42	Object
    //   36	2279	34	localObject43	Object
    //   39	2295	35	localObject44	Object
    //   42	2311	36	localObject45	Object
    //   45	2327	37	localObject46	Object
    //   54	2142	38	localObject47	Object
    //   57	2159	39	localObject48	Object
    //   60	2176	40	localObject49	Object
    //   63	2193	41	localObject50	Object
    //   66	2209	42	localObject51	Object
    //   30	2451	43	localObject52	Object
    //   51	1920	44	localObject53	Object
    //   12	1732	45	localObject54	Object
    //   15	1749	46	localObject55	Object
    //   18	1766	47	localObject56	Object
    //   21	1783	48	localObject57	Object
    //   24	1800	49	localObject58	Object
    //   71	3706	50	localFileProgressResult	FileProgressResult
    //   74	168	51	localObject59	Object
    //   77	185	52	localObject60	Object
    //   80	202	53	localObject61	Object
    //   3743	12	54	i	int
    // Exception table:
    //   from	to	target	type
    //   1298	1305	3801	finally
    //   3731	3737	3801	finally
    //   3737	3745	3801	finally
    //   3750	3798	3801	finally
    //   4421	4423	3801	finally
    //   184	197	4196	java/io/FileNotFoundException
    //   295	308	4196	java/io/FileNotFoundException
    //   406	415	4196	java/io/FileNotFoundException
    //   513	541	4196	java/io/FileNotFoundException
    //   639	648	4196	java/io/FileNotFoundException
    //   746	753	4196	java/io/FileNotFoundException
    //   851	864	4196	java/io/FileNotFoundException
    //   962	974	4196	java/io/FileNotFoundException
    //   1072	1078	4196	java/io/FileNotFoundException
    //   1176	1186	4196	java/io/FileNotFoundException
    //   1284	1298	4196	java/io/FileNotFoundException
    //   1410	1418	4196	java/io/FileNotFoundException
    //   1511	1516	4196	java/io/FileNotFoundException
    //   1609	1614	4196	java/io/FileNotFoundException
    //   1841	1854	4196	java/io/FileNotFoundException
    //   1959	1966	4196	java/io/FileNotFoundException
    //   2071	2078	4196	java/io/FileNotFoundException
    //   2176	2183	4196	java/io/FileNotFoundException
    //   2281	2287	4196	java/io/FileNotFoundException
    //   2380	2387	4196	java/io/FileNotFoundException
    //   2480	2488	4196	java/io/FileNotFoundException
    //   2581	2588	4196	java/io/FileNotFoundException
    //   2681	2696	4196	java/io/FileNotFoundException
    //   2794	2803	4196	java/io/FileNotFoundException
    //   2896	2906	4196	java/io/FileNotFoundException
    //   2999	3006	4196	java/io/FileNotFoundException
    //   3099	3108	4196	java/io/FileNotFoundException
    //   3201	3206	4196	java/io/FileNotFoundException
    //   3299	3307	4196	java/io/FileNotFoundException
    //   3400	3414	4196	java/io/FileNotFoundException
    //   3507	3513	4196	java/io/FileNotFoundException
    //   3606	3617	4196	java/io/FileNotFoundException
    //   3710	3717	4196	java/io/FileNotFoundException
    //   3896	3904	4196	java/io/FileNotFoundException
    //   3997	4002	4196	java/io/FileNotFoundException
    //   4095	4100	4196	java/io/FileNotFoundException
    //   4193	4196	4196	java/io/FileNotFoundException
    //   4516	4524	4196	java/io/FileNotFoundException
    //   4617	4622	4196	java/io/FileNotFoundException
    //   4715	4720	4196	java/io/FileNotFoundException
    //   4813	4842	4196	java/io/FileNotFoundException
    //   4935	4942	4196	java/io/FileNotFoundException
    //   5035	5049	4196	java/io/FileNotFoundException
    //   1305	1317	4418	finally
    //   3720	3731	4418	finally
    //   4419	4421	4418	finally
    //   184	197	5173	java/io/IOException
    //   295	308	5173	java/io/IOException
    //   406	415	5173	java/io/IOException
    //   513	541	5173	java/io/IOException
    //   639	648	5173	java/io/IOException
    //   746	753	5173	java/io/IOException
    //   851	864	5173	java/io/IOException
    //   962	974	5173	java/io/IOException
    //   1072	1078	5173	java/io/IOException
    //   1176	1186	5173	java/io/IOException
    //   1284	1298	5173	java/io/IOException
    //   1410	1418	5173	java/io/IOException
    //   1511	1516	5173	java/io/IOException
    //   1609	1614	5173	java/io/IOException
    //   1841	1854	5173	java/io/IOException
    //   1959	1966	5173	java/io/IOException
    //   2071	2078	5173	java/io/IOException
    //   2176	2183	5173	java/io/IOException
    //   2281	2287	5173	java/io/IOException
    //   2380	2387	5173	java/io/IOException
    //   2480	2488	5173	java/io/IOException
    //   2581	2588	5173	java/io/IOException
    //   2681	2696	5173	java/io/IOException
    //   2794	2803	5173	java/io/IOException
    //   2896	2906	5173	java/io/IOException
    //   2999	3006	5173	java/io/IOException
    //   3099	3108	5173	java/io/IOException
    //   3201	3206	5173	java/io/IOException
    //   3299	3307	5173	java/io/IOException
    //   3400	3414	5173	java/io/IOException
    //   3507	3513	5173	java/io/IOException
    //   3606	3617	5173	java/io/IOException
    //   3710	3717	5173	java/io/IOException
    //   3896	3904	5173	java/io/IOException
    //   3997	4002	5173	java/io/IOException
    //   4095	4100	5173	java/io/IOException
    //   4193	4196	5173	java/io/IOException
    //   4516	4524	5173	java/io/IOException
    //   4617	4622	5173	java/io/IOException
    //   4715	4720	5173	java/io/IOException
    //   4813	4842	5173	java/io/IOException
    //   4935	4942	5173	java/io/IOException
    //   5035	5049	5173	java/io/IOException
    //   184	197	5395	org/json/JSONException
    //   295	308	5395	org/json/JSONException
    //   406	415	5395	org/json/JSONException
    //   513	541	5395	org/json/JSONException
    //   639	648	5395	org/json/JSONException
    //   746	753	5395	org/json/JSONException
    //   851	864	5395	org/json/JSONException
    //   962	974	5395	org/json/JSONException
    //   1072	1078	5395	org/json/JSONException
    //   1176	1186	5395	org/json/JSONException
    //   1284	1298	5395	org/json/JSONException
    //   1410	1418	5395	org/json/JSONException
    //   1511	1516	5395	org/json/JSONException
    //   1609	1614	5395	org/json/JSONException
    //   1841	1854	5395	org/json/JSONException
    //   1959	1966	5395	org/json/JSONException
    //   2071	2078	5395	org/json/JSONException
    //   2176	2183	5395	org/json/JSONException
    //   2281	2287	5395	org/json/JSONException
    //   2380	2387	5395	org/json/JSONException
    //   2480	2488	5395	org/json/JSONException
    //   2581	2588	5395	org/json/JSONException
    //   2681	2696	5395	org/json/JSONException
    //   2794	2803	5395	org/json/JSONException
    //   2896	2906	5395	org/json/JSONException
    //   2999	3006	5395	org/json/JSONException
    //   3099	3108	5395	org/json/JSONException
    //   3201	3206	5395	org/json/JSONException
    //   3299	3307	5395	org/json/JSONException
    //   3400	3414	5395	org/json/JSONException
    //   3507	3513	5395	org/json/JSONException
    //   3606	3617	5395	org/json/JSONException
    //   3710	3717	5395	org/json/JSONException
    //   3896	3904	5395	org/json/JSONException
    //   3997	4002	5395	org/json/JSONException
    //   4095	4100	5395	org/json/JSONException
    //   4193	4196	5395	org/json/JSONException
    //   4516	4524	5395	org/json/JSONException
    //   4617	4622	5395	org/json/JSONException
    //   4715	4720	5395	org/json/JSONException
    //   4813	4842	5395	org/json/JSONException
    //   4935	4942	5395	org/json/JSONException
    //   5035	5049	5395	org/json/JSONException
    //   184	197	5578	java/lang/Throwable
    //   295	308	5578	java/lang/Throwable
    //   406	415	5578	java/lang/Throwable
    //   513	541	5578	java/lang/Throwable
    //   639	648	5578	java/lang/Throwable
    //   746	753	5578	java/lang/Throwable
    //   851	864	5578	java/lang/Throwable
    //   962	974	5578	java/lang/Throwable
    //   1072	1078	5578	java/lang/Throwable
    //   1176	1186	5578	java/lang/Throwable
    //   1284	1298	5578	java/lang/Throwable
    //   1410	1418	5578	java/lang/Throwable
    //   1511	1516	5578	java/lang/Throwable
    //   1609	1614	5578	java/lang/Throwable
    //   1841	1854	5578	java/lang/Throwable
    //   1959	1966	5578	java/lang/Throwable
    //   2071	2078	5578	java/lang/Throwable
    //   2176	2183	5578	java/lang/Throwable
    //   2281	2287	5578	java/lang/Throwable
    //   2380	2387	5578	java/lang/Throwable
    //   2480	2488	5578	java/lang/Throwable
    //   2581	2588	5578	java/lang/Throwable
    //   2681	2696	5578	java/lang/Throwable
    //   2794	2803	5578	java/lang/Throwable
    //   2896	2906	5578	java/lang/Throwable
    //   2999	3006	5578	java/lang/Throwable
    //   3099	3108	5578	java/lang/Throwable
    //   3201	3206	5578	java/lang/Throwable
    //   3299	3307	5578	java/lang/Throwable
    //   3400	3414	5578	java/lang/Throwable
    //   3507	3513	5578	java/lang/Throwable
    //   3606	3617	5578	java/lang/Throwable
    //   3710	3717	5578	java/lang/Throwable
    //   3896	3904	5578	java/lang/Throwable
    //   3997	4002	5578	java/lang/Throwable
    //   4095	4100	5578	java/lang/Throwable
    //   4193	4196	5578	java/lang/Throwable
    //   4516	4524	5578	java/lang/Throwable
    //   4617	4622	5578	java/lang/Throwable
    //   4715	4720	5578	java/lang/Throwable
    //   4813	4842	5578	java/lang/Throwable
    //   4935	4942	5578	java/lang/Throwable
    //   5035	5049	5578	java/lang/Throwable
    //   184	197	5800	finally
    //   295	308	5800	finally
    //   406	415	5800	finally
    //   513	541	5800	finally
    //   639	648	5800	finally
    //   746	753	5800	finally
    //   851	864	5800	finally
    //   962	974	5800	finally
    //   1072	1078	5800	finally
    //   1176	1186	5800	finally
    //   1284	1298	5800	finally
    //   1410	1418	5800	finally
    //   1511	1516	5800	finally
    //   1609	1614	5800	finally
    //   1841	1854	5800	finally
    //   1959	1966	5800	finally
    //   2071	2078	5800	finally
    //   2176	2183	5800	finally
    //   2281	2287	5800	finally
    //   2380	2387	5800	finally
    //   2480	2488	5800	finally
    //   2581	2588	5800	finally
    //   2681	2696	5800	finally
    //   2794	2803	5800	finally
    //   2896	2906	5800	finally
    //   2999	3006	5800	finally
    //   3099	3108	5800	finally
    //   3201	3206	5800	finally
    //   3299	3307	5800	finally
    //   3400	3414	5800	finally
    //   3507	3513	5800	finally
    //   3606	3617	5800	finally
    //   3710	3717	5800	finally
    //   3896	3904	5800	finally
    //   3997	4002	5800	finally
    //   4095	4100	5800	finally
    //   4193	4196	5800	finally
    //   4215	4233	5800	finally
    //   4251	4263	5800	finally
    //   4281	4294	5800	finally
    //   4516	4524	5800	finally
    //   4617	4622	5800	finally
    //   4715	4720	5800	finally
    //   4813	4842	5800	finally
    //   4935	4942	5800	finally
    //   5035	5049	5800	finally
    //   5192	5210	5800	finally
    //   5228	5240	5800	finally
    //   5258	5271	5800	finally
    //   5414	5425	5800	finally
    //   5443	5454	5800	finally
    //   5597	5615	5800	finally
    //   5633	5645	5800	finally
    //   5663	5676	5800	finally
    //   5814	5828	5934	finally
    //   5935	5938	5934	finally
    //   4305	4318	5940	finally
    //   5941	5943	5940	finally
    //   5282	5295	5945	finally
    //   5946	5948	5945	finally
    //   5465	5478	5950	finally
    //   5951	5953	5950	finally
    //   5687	5700	5955	finally
    //   5956	5958	5955	finally
    //   1625	1638	5960	finally
    //   5961	5963	5960	finally
    //   5060	5073	5965	finally
    //   5966	5968	5965	finally
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */