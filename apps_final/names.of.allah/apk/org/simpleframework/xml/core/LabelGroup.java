package org.simpleframework.xml.core;

import java.util.Arrays;
import java.util.List;

class LabelGroup
{
  private final List<Label> list;
  private final int size;
  
  public LabelGroup(List<Label> paramList)
  {
    size = paramList.size();
    list = paramList;
  }
  
  public LabelGroup(Label paramLabel)
  {
    this(Arrays.asList(new Label[] { paramLabel }));
  }
  
  public List<Label> getList()
  {
    return list;
  }
  
  public Label getPrimary()
  {
    if (size > 0) {
      return (Label)list.get(0);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */