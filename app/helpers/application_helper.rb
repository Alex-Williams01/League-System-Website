module ApplicationHelper
   #map used to decide which alert to send based on param.
  ALERTS = {
     :notice => "alert alert-info",
     :success => "alert alert-success",
     :error => "alert alert-danger",
     :alert => "alert alert-warning",
   }
   #function that uses map to alert.
   #input level one of four - :notice, :success, :error, :alert
   def flash_class(level)
     ALERTS[level.to_sym]
   end
end
