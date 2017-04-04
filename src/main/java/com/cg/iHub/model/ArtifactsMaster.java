package com.cg.iHub.model;
import static javax.persistence.FetchType.LAZY;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@Component

@Entity
@Table(name = "IHUB_ARTIFACT_MASTER")
public class ArtifactsMaster implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7959420361417763713L;
	@Id
	@Column(name="ARTIFACT_ID")
	private Long artifactId;
	@Column(name="ARTIFACT_NAME")
	private String artifactName;
	
	@Column(name="ARTIFACT_TYPE")
	private String artifactType;

	@Column(name="MENU_ID")
	private Long menuId;
	
	@Column(name="SECTION_ID")
	private Long sectionId;
	
	@Column(name="ARTIFACT_COMMENT")
	private String artifactDescription;
	
	@Column(name="IMAGE_URL")
	private String artifactImageURL;
	
	@Column(name="UPLOADEDTS")
	private Date uploadeDts;
	
	@Column(name="UPLOADED_BY_USERID")
	private Long uploadedByUserid;
	
	@Column(name="ARTIFACT_SIZE")
	private Long artifactSize;
	
	@Column(name="IS_ACTIVE")
	private String isActive;
	
	@Column(name="ARTIFACT_DATA")
	@Lob @Basic(fetch=LAZY)
	private byte[] artifactData;
	
	@Column(name="SORT_ORDER")
	private Long sortOrder;
	
	@Transient
	private String menuName;
	
	@Transient
	private String sectionName;
	
	@Transient
	private String sectionWidth;

	public String getSectionWidth() {
		return sectionWidth;
	}

	public void setSectionWidth(String sectionWidth) {
		this.sectionWidth = sectionWidth;
	}

	public Long getArtifactId() {
		return artifactId;
	}

	public void setArtifactId(Long artifactId) {
		this.artifactId = artifactId;
	}

	public String getArtifactName() {
		return artifactName;
	}

	public void setArtifactName(String artifactName) {
		this.artifactName = artifactName;
	}

	public String getArtifactType() {
		return artifactType;
	}

	public void setArtifactType(String artifactType) {
		this.artifactType = artifactType;
	}

	public Long getMenuId() {
		return menuId;
	}

	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}

	public Date getUploadeDts() {
		return uploadeDts;
	}

	public void setUploadeDts(Date uploadeDts) {
		this.uploadeDts = uploadeDts;
	}

	public Long getUploadedByUserid() {
		return uploadedByUserid;
	}

	public void setUploadedByUserid(Long uploadedByUserid) {
		this.uploadedByUserid = uploadedByUserid;
	}

	public Long getArtifactSize() {
		return artifactSize;
	}

	public void setArtifactSize(Long artifactSize) {
		this.artifactSize = artifactSize;
	}

	public byte[] getArtifactData() {
		return artifactData;
	}

	public void setArtifactData(byte[] artifactData) {
		this.artifactData = artifactData;
	}

	public String getArtifactDescription() {
		return artifactDescription;
	}

	public void setArtifactDescription(String artifactDescription) {
		this.artifactDescription = artifactDescription;
	}

	public String getArtifactImageURL() {
		return artifactImageURL;
	}

	public void setArtifactImageURL(String artifactImageURL) {
		this.artifactImageURL = artifactImageURL;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public Long getSectionId() {
		return sectionId;
	}

	public void setSectionId(Long sectionId) {
		this.sectionId = sectionId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public Long getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Long sortOrder) {
		this.sortOrder = sortOrder;
	}
	
	@Override
	public String toString() {
		return "ArtifactsMaster [artifactId=" + artifactId + ", artifactName=" + artifactName + ", artifactType="
				+ artifactType + ", menuId=" + menuId + ", artifactDescription="
				+ artifactDescription + ", artifactImageURL=" + artifactImageURL + ", uploadeDts=" + uploadeDts
				+ ", uploadedByUserid=" + uploadedByUserid + ", artifactSize="
				+ artifactSize + ", isActive=" + isActive + "]";
	}
}