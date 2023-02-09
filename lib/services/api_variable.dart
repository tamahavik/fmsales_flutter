const BASE_URL = 'http://103.206.244.14:8888/';
const SIGN_IN = 'api/v1/auth/login';
const TIME_OUT = 120000;
const SYNC_APP_VERSION = '/api/v1/android/version';
const SYNC_LOV = '/api/v1/lov/list-all-data';
const SYNC_OCCUPATION = '/api/v1/occupation';
const SYNC_SUB_OCCUPATION = '/api/v1/sub-occupation';
const SYNC_CATEGORY = '/api/v1/fifrest/mstobjects/objgroups';
const SYNC_MODEL = '/api/v1/object-code/byObjGrp';
const SYNC_PROVINCE = '/api/v1/province/sync/{date}';
const SYNC_CITY = '/api/v1/android/sync/city/{lastLogin}';
const SYNC_KECAMATAN = '/api/v1/android/sync/kecamatan/{lastLogin}';
const SYNC_KELURAHAN = '/api/v1/android/sync/kelurahan/{lastLogin}';
const SYNC_ZIPCODE = '/api/v1/android/sync/zip/{lastLogin}';
const SYNC_SLA_OPPORTUNITY = '/api/v1/android/sync/sla/opportunity';
const SYNC_PARAMETER_PRIORITY = '/api/v1/android/parameterDataPriority';
const MIN_SDK = 26;
