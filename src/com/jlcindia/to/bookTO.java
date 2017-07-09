package com.jlcindia.to;

public class bookTO {
		private String startTime;
		private String endTime;
		private String dateAquired;
		private String instId;
		private String Purpose;
		private String itemId;

	
		public bookTO(String itemId2, String instId2, String dateAquired2, String startTime2, String purpose2,
				String endTime2) {
			this.instId=instId2;
			this.itemId=itemId2;
			this.dateAquired=dateAquired2;
			this.startTime=startTime2;
			this.Purpose=purpose2;
			this.endTime=endTime2;
		}

		public String getItemId() {
			return this.itemId;
		}
		public String getInstId() {
			return this.instId;
		}
		public String getDateAquired() {
			return this.dateAquired;
		}
		public String getStartTime() {
			return this.startTime;
		}
		public String getEndTime() {
			return this.endTime;
		}
		public String getPurpose() {
			return this.Purpose;
		}
}