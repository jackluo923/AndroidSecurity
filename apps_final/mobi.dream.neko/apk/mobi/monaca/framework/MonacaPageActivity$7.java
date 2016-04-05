package mobi.monaca.framework;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mobi.monaca.framework.nativeui.UpdateStyleQuery;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.component.PageComponent;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import org.json.JSONArray;

class MonacaPageActivity$7
  implements Runnable
{
  MonacaPageActivity$7(MonacaPageActivity paramMonacaPageActivity, List paramList) {}
  
  public void run()
  {
    Iterator localIterator = val$queries.iterator();
    if (localIterator.hasNext())
    {
      UpdateStyleQuery localUpdateStyleQuery = (UpdateStyleQuery)localIterator.next();
      int i = 0;
      while (i < ids.length())
      {
        Object localObject = ids.optString(i, "");
        if ((MonacaPageActivity.access$100(this$0) != null) && (MonacaPageActivity.access$100(this$0).getComponentIDsMap() != null) && (MonacaPageActivity.access$100(this$0).getComponentIDsMap().containsKey(localObject)))
        {
          localObject = (Component)MonacaPageActivity.access$100(this$0).getComponentIDsMap().get(localObject);
          if (localObject == null) {}
        }
        try
        {
          ((Component)localObject).updateStyle(style);
          i += 1;
        }
        catch (NativeUIException localNativeUIException)
        {
          for (;;)
          {
            localNativeUIException.printStackTrace();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */