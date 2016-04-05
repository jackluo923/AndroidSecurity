package org.simpleframework.xml.core;

import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class DetailExtractor
{
  private final Cache<Detail> details = new ConcurrentCache();
  private final Cache<ContactList> fields = new ConcurrentCache();
  private final Cache<ContactList> methods = new ConcurrentCache();
  private final DefaultType override;
  private final Support support;
  
  public DetailExtractor(Support paramSupport)
  {
    this(paramSupport, null);
  }
  
  public DetailExtractor(Support paramSupport, DefaultType paramDefaultType)
  {
    override = paramDefaultType;
    support = paramSupport;
  }
  
  private ContactList getFields(Class paramClass, Detail paramDetail)
  {
    FieldScanner localFieldScanner = new FieldScanner(paramDetail, support);
    if (paramDetail != null) {
      fields.cache(paramClass, localFieldScanner);
    }
    return localFieldScanner;
  }
  
  private ContactList getMethods(Class paramClass, Detail paramDetail)
  {
    MethodScanner localMethodScanner = new MethodScanner(paramDetail, support);
    if (paramDetail != null) {
      methods.cache(paramClass, localMethodScanner);
    }
    return localMethodScanner;
  }
  
  public Detail getDetail(Class paramClass)
  {
    Detail localDetail = (Detail)details.fetch(paramClass);
    Object localObject = localDetail;
    if (localDetail == null)
    {
      localObject = new DetailScanner(paramClass, override);
      details.cache(paramClass, localObject);
    }
    return (Detail)localObject;
  }
  
  public ContactList getFields(Class paramClass)
  {
    ContactList localContactList2 = (ContactList)fields.fetch(paramClass);
    ContactList localContactList1 = localContactList2;
    if (localContactList2 == null)
    {
      Detail localDetail = getDetail(paramClass);
      localContactList1 = localContactList2;
      if (localDetail != null) {
        localContactList1 = getFields(paramClass, localDetail);
      }
    }
    return localContactList1;
  }
  
  public ContactList getMethods(Class paramClass)
  {
    ContactList localContactList2 = (ContactList)methods.fetch(paramClass);
    ContactList localContactList1 = localContactList2;
    if (localContactList2 == null)
    {
      Detail localDetail = getDetail(paramClass);
      localContactList1 = localContactList2;
      if (localDetail != null) {
        localContactList1 = getMethods(paramClass, localDetail);
      }
    }
    return localContactList1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.DetailExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */