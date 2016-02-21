package com.amazon.device.ads;

interface PreferredMarketplaceRetriever {

    public static class NullPreferredMarketplaceRetriever implements PreferredMarketplaceRetriever {
        public String retrievePreferredMarketplace() {
            return null;
        }
    }

    String retrievePreferredMarketplace();
}