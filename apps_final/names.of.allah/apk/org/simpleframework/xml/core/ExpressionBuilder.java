package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.LimitedCache;

class ExpressionBuilder
{
  private final Cache<Expression> cache = new LimitedCache();
  private final Format format;
  private final Class type;
  
  public ExpressionBuilder(Detail paramDetail, Support paramSupport)
  {
    format = paramSupport.getFormat();
    type = paramDetail.getType();
  }
  
  private Expression create(String paramString)
  {
    PathParser localPathParser = new PathParser(paramString, new ClassType(type), format);
    if (cache != null) {
      cache.cache(paramString, localPathParser);
    }
    return localPathParser;
  }
  
  public Expression build(String paramString)
  {
    Expression localExpression2 = (Expression)cache.fetch(paramString);
    Expression localExpression1 = localExpression2;
    if (localExpression2 == null) {
      localExpression1 = create(paramString);
    }
    return localExpression1;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExpressionBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */