package com.j256.ormlite.field;

import com.j256.ormlite.field.types.EnumStringType;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class DataPersisterManager
{
  private static final DataPersister DEFAULT_ENUM_PERSISTER = ;
  private static final Map<String, DataPersister> builtInMap;
  private static List<DataPersister> registeredPersisters = null;
  
  static
  {
    builtInMap = new HashMap();
    DataType[] arrayOfDataType = DataType.values();
    int k = arrayOfDataType.length;
    int i = 0;
    while (i < k)
    {
      DataPersister localDataPersister = arrayOfDataType[i].getDataPersister();
      if (localDataPersister != null)
      {
        Object localObject1 = localDataPersister.getAssociatedClasses();
        int m = localObject1.length;
        int j = 0;
        Object localObject2;
        while (j < m)
        {
          localObject2 = localObject1[j];
          builtInMap.put(((Class)localObject2).getName(), localDataPersister);
          j += 1;
        }
        if (localDataPersister.getAssociatedClassNames() != null)
        {
          localObject1 = localDataPersister.getAssociatedClassNames();
          m = localObject1.length;
          j = 0;
          while (j < m)
          {
            localObject2 = localObject1[j];
            builtInMap.put(localObject2, localDataPersister);
            j += 1;
          }
        }
      }
      i += 1;
    }
  }
  
  public static void clear()
  {
    registeredPersisters = null;
  }
  
  public static DataPersister lookupForField(Field paramField)
  {
    DataPersister localDataPersister2;
    DataPersister localDataPersister1;
    if (registeredPersisters != null)
    {
      Iterator localIterator = registeredPersisters.iterator();
      if (localIterator.hasNext())
      {
        localDataPersister2 = (DataPersister)localIterator.next();
        if (localDataPersister2.isValidForField(paramField)) {
          localDataPersister1 = localDataPersister2;
        }
      }
    }
    label96:
    do
    {
      return localDataPersister1;
      Class[] arrayOfClass = localDataPersister2.getAssociatedClasses();
      int j = arrayOfClass.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label96;
        }
        Class localClass = arrayOfClass[i];
        localDataPersister1 = localDataPersister2;
        if (paramField.getType() == localClass) {
          break;
        }
        i += 1;
      }
      break;
      localDataPersister2 = (DataPersister)builtInMap.get(paramField.getType().getName());
      localDataPersister1 = localDataPersister2;
    } while (localDataPersister2 != null);
    if (paramField.getType().isEnum()) {
      return DEFAULT_ENUM_PERSISTER;
    }
    return null;
  }
  
  public static void registerDataPersisters(DataPersister... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    if (registeredPersisters != null) {
      localArrayList.addAll(registeredPersisters);
    }
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramVarArgs[i]);
      i += 1;
    }
    registeredPersisters = localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.DataPersisterManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */