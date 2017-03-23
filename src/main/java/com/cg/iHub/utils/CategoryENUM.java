package com.cg.iHub.utils;

public enum CategoryENUM {
	LIFE_PENSION(1, "LIFE_PENSION"),
	KNOWLEDGE_HUB(2, "KNOWLEDGE_HUB"),
	PROPERTY_CASUALITY(3, "PROPERTY_CASUALITY"),
	HEALTH(4, "HEALTH");

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
