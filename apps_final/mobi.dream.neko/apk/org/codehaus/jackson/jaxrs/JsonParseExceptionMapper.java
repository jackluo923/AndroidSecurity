package org.codehaus.jackson.jaxrs;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;
import org.codehaus.jackson.JsonParseException;

@Provider
public class JsonParseExceptionMapper
  implements ExceptionMapper<JsonParseException>
{
  public Response toResponse(JsonParseException paramJsonParseException)
  {
    return Response.status(Response.Status.BAD_REQUEST).entity(paramJsonParseException.getMessage()).type("text/plain").build();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.jaxrs.JsonParseExceptionMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */