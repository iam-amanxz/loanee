class AppNotification {
  final String title;
  final String description;

  AppNotification._(this.title, this.description);

  factory AppNotification.success() {
    return AppNotification._('Success', 'Success');
  }
  factory AppNotification.successCreating(String domain) {
    return AppNotification._('Success', 'Successfully created $domain');
  }
  factory AppNotification.successDeleting(String domain) {
    return AppNotification._('Success', 'Successfully deleted $domain');
  }
  factory AppNotification.successSettling(String domain) {
    return AppNotification._('Success', 'Successfully settled $domain');
  }
  factory AppNotification.error() {
    return AppNotification._('Error', 'Error');
  }
  factory AppNotification.errorFailedLoading(String domain) {
    return AppNotification._('Error', 'Failed to load $domain');
  }
  factory AppNotification.errorSettling(String domain) {
    return AppNotification._('Error', 'Failed to settle $domain');
  }
  factory AppNotification.errorCreating(String domain) {
    return AppNotification._('Error', 'Failed to create $domain');
  }
  factory AppNotification.errorDeleting(String domain) {
    return AppNotification._('Error', 'Failed to delete $domain');
  }
  factory AppNotification.errorFieldRequired(String field) {
    return AppNotification._('Validation Error', '$field required');
  }
  factory AppNotification.errorFieldConflict(String field) {
    return AppNotification._(
        'Validation Error', 'Record with entered $field exists');
  }
  factory AppNotification.errorSettlementMaxReached() {
    return AppNotification._(
        'Settlement Error', 'Cannot settle more than the pending amount');
  }
  factory AppNotification.errorAlreadySettled() {
    return AppNotification._('Settlement Error', 'Already settled');
  }
}
