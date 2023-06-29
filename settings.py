# Sinks
network = ['Servlet', 'web', 'URL', 'apache', 'http', 'OAuth2', 'socket', 'rpc', 'spring']
database = ['createQuery', 'sql', 'Jdbc']
files = ['File', 'Writer', 'OutputStream']
logs = ['print', 'Log', 'OutputStream']
components = ['Bundle', 'Intent', 'Activity']
message = ['Sms', 'Message']
video = ['media']

sinks_categories = {'network': network, 'database': database, 'files': files,
                    'logs': logs, 'components': components, 'message': message, 'media': video}

# Sources
location = ['Location', 'locale', 'timezone']
phone_id = ['Telephony', 'device']
bluetooth = ['Bluetooth']
Audio = ['Audio']
installed_apps = ['Package']
wifi = ['wifi']
personal = ['Calendar']
log_source = ['logs']
credentails = ['authentication', 'Login', 'oauth2', 'security']
db = ['database', 'sql']
sensors = ['sensor']
account = ['account']
calendar = ['Calendar']
Browser = ['Browser']
sources_categories = {'credentails': credentails, 'location': location,
                      'phone_id': phone_id, 'Audio': Audio,
                      'installed_apps': installed_apps, 'bluetooth': bluetooth,
                      'wifi': wifi, 'personal': personal, 'db': db, 'sensors': sensors, 'account': account,
                      'calendar': calendar, 'browser': Browser
                      }

sdk_pattern = "airship|kumulos|com\.pusher|onesignal|com\.taplytics|com\.leanplum|BMSClient|MFPPush|pushbot|jiguang|jpush|com\.igexin"


aar_dir = './notification-lib/aar/'
# store the temp file extracted from aar file.
temp_dir = './notification-lib/temp/'
# store the class.jar file from the temp_dir
jar_dir = './notification-lib/jar/jar_extracted/'
# jar_dir = 'notification-lib/jar/error/'
# store the jar files that cannot be successfully converted into dex file.
convert_success_jar_dir = './notification-lib/jar/success/'
# store the jar files that are successfully converted into dex file.
convert_error_jar_dir = './notification-lib/jar/error/'
# convert_error_jar_dir = 'notification-lib/jar/jar_extracted/'
dex_dir = 'test_lib/'
# dex_dir = './bin/notification-lib/test/'
apk_dir = './apks/'
# Flowdroid Result dir
flow_result_dir = './flow_result/'
source_sink_file = 'conf/SourcesAndSinks.txt'
android_home = 'sdk/'
libpecker_dir = "tools/LibPecker.jar"
flowdroid_dir = "tools/soot-infoflow-cmd-jar-with-dependencies.jar"
simi_threshold = 0.6
