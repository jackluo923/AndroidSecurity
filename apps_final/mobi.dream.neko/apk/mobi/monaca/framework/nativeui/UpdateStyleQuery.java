package mobi.monaca.framework.nativeui;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONObject;

public class UpdateStyleQuery
{
  public final JSONArray ids;
  public final JSONObject style;
  
  public UpdateStyleQuery(JSONArray paramJSONArray, JSONObject paramJSONObject)
  {
    ids = paramJSONArray;
    style = paramJSONObject;
  }
  
  public String toString()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_query_ids) + ids + MonacaApplication.getStringFromResource(R.string.nc_query_style) + style;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.UpdateStyleQuery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */