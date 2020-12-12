module ApplicationHelper
  ALERTS = {
     :notice => "alert alert-info",
     :success => "alert alert-success",
     :error => "alert alert-danger",
     :alert => "alert alert-warning",
   }

   def flash_class(level)
     ALERTS[level.to_sym]
   end
end
