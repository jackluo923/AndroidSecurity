package com.actionbarsherlock.view;

import android.content.Context;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

public class MenuInflater
{
  private static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
  private static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
  private static final String LOG_TAG = "MenuInflater";
  private static final int NO_ID = 0;
  private static final String XML_GROUP = "group";
  private static final String XML_ITEM = "item";
  private static final String XML_MENU = "menu";
  private final Object[] mActionProviderConstructorArguments;
  private final Object[] mActionViewConstructorArguments;
  private Context mContext;
  private Object mRealOwner;
  
  static
  {
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Context.class;
    ACTION_VIEW_CONSTRUCTOR_SIGNATURE = arrayOfClass;
    ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = arrayOfClass;
  }
  
  public MenuInflater(Context paramContext)
  {
    mContext = paramContext;
    mRealOwner = paramContext;
    mActionViewConstructorArguments = new Object[] { paramContext };
    mActionProviderConstructorArguments = mActionViewConstructorArguments;
  }
  
  public MenuInflater(Context paramContext, Object paramObject)
  {
    mContext = paramContext;
    mRealOwner = paramObject;
    mActionViewConstructorArguments = new Object[] { paramContext };
    mActionProviderConstructorArguments = mActionViewConstructorArguments;
  }
  
  private void parseMenu(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
  {
    MenuInflater.MenuState localMenuState = new MenuInflater.MenuState(this, paramMenu);
    int i = paramXmlPullParser.getEventType();
    label49:
    int k;
    int j;
    if (i == 2)
    {
      paramMenu = paramXmlPullParser.getName();
      if (paramMenu.equals("menu"))
      {
        i = paramXmlPullParser.next();
        paramMenu = null;
        int m = 0;
        k = i;
        j = 0;
        i = m;
        label65:
        if (j != 0) {
          return;
        }
      }
    }
    switch (k)
    {
    default: 
    case 2: 
    case 3: 
      for (;;)
      {
        k = paramXmlPullParser.next();
        break label65;
        throw new RuntimeException("Expecting menu, got " + paramMenu);
        j = paramXmlPullParser.next();
        i = j;
        if (j != 1) {
          break;
        }
        i = j;
        break label49;
        if (i == 0)
        {
          String str = paramXmlPullParser.getName();
          if (str.equals("group"))
          {
            localMenuState.readGroup(paramAttributeSet);
          }
          else if (str.equals("item"))
          {
            localMenuState.readItem(paramAttributeSet);
          }
          else if (str.equals("menu"))
          {
            parseMenu(paramXmlPullParser, paramAttributeSet, localMenuState.addSubMenuItem());
          }
          else
          {
            paramMenu = str;
            i = 1;
            continue;
            str = paramXmlPullParser.getName();
            if ((i != 0) && (str.equals(paramMenu)))
            {
              paramMenu = null;
              i = 0;
            }
            else if (str.equals("group"))
            {
              localMenuState.resetGroup();
            }
            else if (str.equals("item"))
            {
              if (!localMenuState.hasAddedItem()) {
                if ((MenuInflater.MenuState.access$000(localMenuState) != null) && (MenuInflater.MenuState.access$000(localMenuState).hasSubMenu())) {
                  localMenuState.addSubMenuItem();
                } else {
                  localMenuState.addItem();
                }
              }
            }
            else if (str.equals("menu"))
            {
              j = 1;
            }
          }
        }
      }
    }
    throw new RuntimeException("Unexpected end of document");
  }
  
  /* Error */
  public void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 5
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_0
    //   9: getfield 48	com/actionbarsherlock/view/MenuInflater:mContext	Landroid/content/Context;
    //   12: invokevirtual 152	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   15: iload_1
    //   16: invokevirtual 158	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   19: astore 6
    //   21: aload 6
    //   23: astore 4
    //   25: aload 6
    //   27: astore_3
    //   28: aload 6
    //   30: astore 5
    //   32: aload_0
    //   33: aload 6
    //   35: aload 6
    //   37: invokestatic 164	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   40: aload_2
    //   41: invokespecial 121	com/actionbarsherlock/view/MenuInflater:parseMenu	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/actionbarsherlock/view/Menu;)V
    //   44: aload 6
    //   46: ifnull +10 -> 56
    //   49: aload 6
    //   51: invokeinterface 169 1 0
    //   56: return
    //   57: astore_2
    //   58: aload 4
    //   60: astore_3
    //   61: new 171	android/view/InflateException
    //   64: dup
    //   65: ldc -83
    //   67: aload_2
    //   68: invokespecial 176	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   71: athrow
    //   72: astore_2
    //   73: aload_3
    //   74: ifnull +9 -> 83
    //   77: aload_3
    //   78: invokeinterface 169 1 0
    //   83: aload_2
    //   84: athrow
    //   85: astore_2
    //   86: aload 5
    //   88: astore_3
    //   89: new 171	android/view/InflateException
    //   92: dup
    //   93: ldc -83
    //   95: aload_2
    //   96: invokespecial 176	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	MenuInflater
    //   0	100	1	paramInt	int
    //   0	100	2	paramMenu	Menu
    //   1	88	3	localObject1	Object
    //   6	53	4	localObject2	Object
    //   3	84	5	localObject3	Object
    //   19	31	6	localXmlResourceParser	android.content.res.XmlResourceParser
    // Exception table:
    //   from	to	target	type
    //   8	21	57	org/xmlpull/v1/XmlPullParserException
    //   32	44	57	org/xmlpull/v1/XmlPullParserException
    //   8	21	72	finally
    //   32	44	72	finally
    //   61	72	72	finally
    //   89	100	72	finally
    //   8	21	85	java/io/IOException
    //   32	44	85	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.view.MenuInflater
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */