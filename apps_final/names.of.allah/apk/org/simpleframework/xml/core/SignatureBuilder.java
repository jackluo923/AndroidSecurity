package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

class SignatureBuilder
{
  private final Constructor factory;
  private final SignatureBuilder.ParameterTable table = new SignatureBuilder.ParameterTable();
  
  public SignatureBuilder(Constructor paramConstructor)
  {
    factory = paramConstructor;
  }
  
  private List<Signature> build(SignatureBuilder.ParameterTable paramParameterTable)
  {
    if (table.isEmpty()) {
      return create();
    }
    build(paramParameterTable, 0);
    return create(paramParameterTable);
  }
  
  private void build(SignatureBuilder.ParameterTable paramParameterTable, int paramInt)
  {
    build(paramParameterTable, new SignatureBuilder.ParameterList(), paramInt);
  }
  
  private void build(SignatureBuilder.ParameterTable paramParameterTable, SignatureBuilder.ParameterList paramParameterList, int paramInt)
  {
    SignatureBuilder.ParameterList localParameterList1 = table.get(paramInt);
    int j = localParameterList1.size();
    if (SignatureBuilder.ParameterTable.access$000(table) - 1 > paramInt)
    {
      int i = 0;
      while (i < j)
      {
        SignatureBuilder.ParameterList localParameterList2 = new SignatureBuilder.ParameterList(paramParameterList);
        if (paramParameterList != null)
        {
          localParameterList2.add((Parameter)localParameterList1.get(i));
          build(paramParameterTable, localParameterList2, paramInt + 1);
        }
        i += 1;
      }
    }
    populate(paramParameterTable, paramParameterList, paramInt);
  }
  
  private List<Signature> create()
  {
    ArrayList localArrayList = new ArrayList();
    Signature localSignature = new Signature(factory);
    if (isValid()) {
      localArrayList.add(localSignature);
    }
    return localArrayList;
  }
  
  private List<Signature> create(SignatureBuilder.ParameterTable paramParameterTable)
  {
    ArrayList localArrayList = new ArrayList();
    int k = SignatureBuilder.ParameterTable.access$100(paramParameterTable);
    int m = SignatureBuilder.ParameterTable.access$000(paramParameterTable);
    int i = 0;
    while (i < k)
    {
      Signature localSignature = new Signature(factory);
      int j = 0;
      while (j < m)
      {
        Parameter localParameter = paramParameterTable.get(j, i);
        String str = localParameter.getPath();
        if (localSignature.contains(localParameter.getKey())) {
          throw new ConstructorException("Parameter '%s' is a duplicate in %s", new Object[] { str, factory });
        }
        localSignature.add(localParameter);
        j += 1;
      }
      localArrayList.add(localSignature);
      i += 1;
    }
    return localArrayList;
  }
  
  private void populate(SignatureBuilder.ParameterTable paramParameterTable, SignatureBuilder.ParameterList paramParameterList, int paramInt)
  {
    SignatureBuilder.ParameterList localParameterList = table.get(paramInt);
    int k = paramParameterList.size();
    int m = localParameterList.size();
    int i = 0;
    while (i < m)
    {
      int j = 0;
      while (j < k)
      {
        paramParameterTable.get(j).add((Parameter)paramParameterList.get(j));
        j += 1;
      }
      paramParameterTable.get(paramInt).add((Parameter)localParameterList.get(i));
      i += 1;
    }
  }
  
  public List<Signature> build()
  {
    return build(new SignatureBuilder.ParameterTable());
  }
  
  public void insert(Parameter paramParameter, int paramInt)
  {
    table.insert(paramParameter, paramInt);
  }
  
  public boolean isValid()
  {
    Class[] arrayOfClass = factory.getParameterTypes();
    int i = SignatureBuilder.ParameterTable.access$000(table);
    return arrayOfClass.length == i;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.SignatureBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */