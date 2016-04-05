package com.google.android.gms.identity.intents;

import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class UserAddressRequest$Builder
{
  private UserAddressRequest$Builder(UserAddressRequest paramUserAddressRequest) {}
  
  public final Builder addAllowedCountrySpecification(CountrySpecification paramCountrySpecification)
  {
    if (UC.UB == null) {
      UC.UB = new ArrayList();
    }
    UC.UB.add(paramCountrySpecification);
    return this;
  }
  
  public final Builder addAllowedCountrySpecifications(Collection<CountrySpecification> paramCollection)
  {
    if (UC.UB == null) {
      UC.UB = new ArrayList();
    }
    UC.UB.addAll(paramCollection);
    return this;
  }
  
  public final UserAddressRequest build()
  {
    if (UC.UB != null) {
      UC.UB = Collections.unmodifiableList(UC.UB);
    }
    return UC;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.identity.intents.UserAddressRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */