package com.cg.iHub.model;
import static javax.persistence.FetchType.LAZY;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import oracle.sql.BLOB;

@Configuration
@Component

@Entity
@Table(name = "ARTIFACTS_MASTER_TEST")
public class ArtifactsMaster {
	@Id
	@Column(name="ARTIFACT_ID")
	private Long artifactId;
	
	@Column(name="ARTIFACT_NAME")
	private String artifactName;
	
	@Column(name="ARTIFACT_TYPE")
	private String artifactType;
	
	@Column(name="MENU_ID")
	private Long menuId;
	
	@Column(name="ARTIFACT_STATUS_CODE")
	private String artifactStatusCode;
	
	@Column(name="ARTIFACT_COMMENT")
	private String artifactComment;
	
	@Column(name="LASTMODIFIEDTS")
	private Date lastModifieDts;
	
	@Column(name="UPLOADEDTS")
	private Date uploadeDts;
	
	@Column(name="UPLOADED_BY_USERID")
	private Long uploadedByUserid;
	
	@Column(name="UPLOADED_FROM_IP")
	private String uploadedFromIp;
	
	@Column(name="ARTIFACT_SIZE")
	private Long artifactSize;
	
	@Column(name="DOCAVAILABLESTATUS")
	private String docAvailableStatus;
	
	@Column(name="REJECT_COMMENT")
	private String rejectComment;
	
	@Column(name="ZONE_ID")
	private Long zoneId;
	
	@Column(name="SUB_MENU_ID")
	private String subMenuId;
	
	@Column(name="ARTIFACT_DATA")
	@Basic(fetch=LAZY)
	@Lob
	private byte[] artifactData;

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

	public String getArtifactStatusCode() {
		return artifactStatusCode;
	}

	public void setArtifactStatusCode(String artifactStatusCode) {
		this.artifactStatusCode = artifactStatusCode;
	}

	public String getArtifactComment() {
		return artifactComment;
	}

	public void setArtifactComment(String artifactComment) {
		this.artifactComment = artifactComment;
	}

	public Date getLastModifieDts() {
		return lastModifieDts;
	}

	public void setLastModifieDts(Date lastModifieDts) {
		this.lastModifieDts = lastModifieDts;
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

	public String getUploadedFromIp() {
		return uploadedFromIp;
	}

	public void setUploadedFromIp(String uploadedFromIp) {
		this.uploadedFromIp = uploadedFromIp;
	}

	public Long getArtifactSize() {
		return artifactSize;
	}

	public void setArtifactSize(Long artifactSize) {
		this.artifactSize = artifactSize;
	}

	public String getDocAvailableStatus() {
		return docAvailableStatus;
	}

	public void setDocAvailableStatus(String docAvailableStatus) {
		this.docAvailableStatus = docAvailableStatus;
	}

	public String getRejectComment() {
		return rejectComment;
	}

	public void setRejectComment(String rejectComment) {
		this.rejectComment = rejectComment;
	}

	public Long getZoneId() {
		return zoneId;
	}

	public void setZoneId(Long zoneId) {
		this.zoneId = zoneId;
	}

	public String getSubMenuId() {
		return subMenuId;
	}

	public void setSubMenuId(String subMenuId) {
		this.subMenuId = subMenuId;
	}

	@Override
	public String toString() {
		return "ArtifactsMaster [artifactId=" + artifactId + ", artifactName=" + artifactName + ", artifactType="
				+ artifactType + ", menuId=" + menuId + ", artifactStatusCode=" + artifactStatusCode
				+ ", artifactComment=" + artifactComment + ", lastModifieDts=" + lastModifieDts + ", uploadeDts="
				+ uploadeDts + ", uploadedByUserid=" + uploadedByUserid + ", uploadedFromIp=" + uploadedFromIp
				+ ", artifactSize=" + artifactSize + ", docAvailableStatus=" + docAvailableStatus + ", rejectComment="
				+ rejectComment + ", zoneId=" + zoneId + ", subMenuId=" + subMenuId + "]";
	}

	public byte[] getArtifactData() {
		return artifactData;
	}

	public void setArtifactData(byte[] artifactData) {
		this.artifactData = artifactData;
	}
}