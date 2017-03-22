package com.cg.iHub.utils;

public enum CategoryENUM {
	LIFE_PENSION(1, "LIFE_PENSION"),
	HEALTH(5, "HEALTH"),
	PROPERTY_CASUALITY(9, "PROPERTY_CASUALITY"),
	KNOWLEDGE_HUB(13, "KNOWLEDGE_HUB");

    private String description;
    private Integer menuId;
    
    private CategoryENUM(Integer menuId, String description) {
    	this.description = description;
        this.menuId = menuId;
    }
    
    public String getDescription(){
    	return description;
    }
    
    public Integer getId(){
    	return menuId;
    }
}
