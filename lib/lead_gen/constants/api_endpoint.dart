class ApiEndPoint{
  //Auth endpoints
  String register = "register";

  String login = "login";

  String logout = "logout";

  String sendOtp = "send_otp";

  String verifyOtp = "verify_otp";

  String updatePassword = "update_password";

  String updateFcmToken = "update_fcm_token";

  String deleteAccountRequest = "delete_account_request";

  String checkLicense = "check_license";

  //customer endpoints
  String getCustomers = "get_customers";

  String updateCustomer = "update_customer";

  //Department endpoints
  String addDepartment = "add_department";

  String getDepartments = "get_departments";

  String deleteDepartment = "delete_department";

  String updateDepartment = "update_department";

  //Department user endpoints
  String addDepartmentUser = "add_department_user";

  String deleteDepartmentUser = "delete_department_user";

  String updateDepartmentUser = "update_department_user";

  String getDepartmentUsers = "get_department_users";

  //lead endpoint
  String addLead = "add_lead";

  String addLeadChat = "add_lead_chat";

  String updateLeadStatus = "update_lead_status";

  String getDashboardData = "get_dashboard_data";

  //profile endpoints
  String updateProfile = "update_profile";

  String getProfile = "get_profile";

  //reminder endpoints
  String addReminder = "add_reminder";

  String deleteReminder = "delete_reminder";

  String getReminders = "get_reminders";

  String getRemindersCount = "get_reminders_count";

  //Status endpoint
  String getStatuses = "get_statuses";
}