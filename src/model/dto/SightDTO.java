package model.dto;

public class SightDTO {
		private String sightId;
		private String sightName;
		private String sightRegion;
		private String sightCategory;
		private String imagePath;
		
		public SightDTO() {}

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

		public String getImagePath() {
			return imagePath;
		}

		public void setImagePath(String imagePath) {
			this.imagePath = imagePath;
		}

		public SightDTO(String sightId, String sightName, String sightRegion, String sightCategory, String imagePath) {
			super();
			this.sightId = sightId;
			this.sightName = sightName;
			this.sightRegion = sightRegion;
			this.sightCategory = sightCategory;
			this.imagePath = imagePath;
		}

		@Override
		public String toString() {
			return "SightDTO [sightId=" + sightId + ", sightName=" + sightName + ", sightRegion=" + sightRegion
					+ ", sightCategory=" + sightCategory + ", imagePath=" + imagePath + "]";
		}
		
		
}
