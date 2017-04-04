package com.cg.iHub.model;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@Component

@Entity
@Table(name = "IHUB_SECTION")
public class SectionMaster implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8470513427263792157L;

	@Id
	@Column(name="SECTION_ID")
	private Long sectionId;
	
	@Column(name="MENU_ID")
	private Long menuId;

	@Column(name="SECTION_NAME")
	private String sectionName;
	
	@Column(name="CREATED_DATE")
	private Date createdDate;
	
	@Column(name="CREATED_BY")
	private String createdBy;
	
	@Column(name="IS_ACTIVE")
	private String isActive;

	@Column(name="SECTION_WIDTH")
	private String sectionWidth;
	
	public String getSectionWidth() {
		return sectionWidth;
	}

	public void setSectionWidth(String sectionWidth) {
		this.sectionWidth = sectionWidth;
	}

	public Long getSectionId() {
		return sectionId;
	}

	public void setSectionId(Long sectionId) {
		this.sectionId = sectionId;
	}

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "SectionMaster [sectionId=" + sectionId + ", menuId=" + menuId + ", sectionName=" + sectionName
				+ ", createdDate=" + createdDate + ", createdBy=" + createdBy + ", isActive=" + isActive + ", SectionWidth=" + sectionWidth +  "]";
	}
}