package model.dto;

public class SightDTO {
		private String sightId;
		private String sightName;
		private String sightRegion;
		private String sightCategory;
		
		public SightDTO() {}
		
		public SightDTO(String sightId, String sightName, String sightRegion, String sightCategory) {
			this.sightId = sightId;
			this.sightName = sightName;
			this.sightRegion = sightRegion;
			this.sightCategory = sightCategory;
		}

		public String getSightId() {
			return sightId;
		}
		public void setSightId(String sightId) {
			this.sightId = sightId;
		}
		public String getSightName() {
			return sightName;
		}
		public void setSightName(String sightName) {
			this.sightName = sightName;
		}
		public String getSightRegion() {
			return sightRegion;
		}
		public void setSightRegion(String sightRegion) {
			this.sightRegion = sightRegion;
		}
		public String getSightCategory() {
			return sightCategory;
		}
		public void setSightCategory(String sightCategory) {
			this.sightCategory = sightCategory;
		}

		public String toString() {
			return "SightDTO [sightId=" + sightId + ", sightName=" + sightName + ", sightRegion=" + sightRegion
					+ ", sightCategory=" + sightCategory + "]";
		}
		
		
}
