.class public Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x21c7

.field public static final TAG:Ljava/lang/String; = "SmsBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    const-string v3, ""

    .line 166
    .local v3, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "com.google.android.apps.googlevoice.TEXT"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    :goto_0
    return-object v3

    .line 171
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v8

    const/16 v9, 0x13

    if-lt v8, v9, :cond_3

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 175
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SmsMessage;

    .line 176
    .local v7, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v7, :cond_1

    .line 177
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "smsMsg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "SmsBroadcastReceiver"

    const-string v9, "Unable to retrieve message body from SmsMessage"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    goto :goto_0

    .line 183
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "pdus"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 185
    .local v5, "pdus":[Ljava/lang/Object;
    array-length v9, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_4

    aget-object v4, v5, v8

    .line 186
    .local v4, "pdu":Ljava/lang/Object;
    check-cast v4, [B

    .end local v4    # "pdu":Ljava/lang/Object;
    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 187
    .restart local v7    # "smsMsg":Landroid/telephony/SmsMessage;
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 189
    .end local v7    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const-string v5, ""

    .line 121
    .local v5, "phone":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "com.google.android.apps.googlevoice.PHONE_NUMBER"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    :cond_0
    :goto_0
    return-object v5

    .line 127
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v7

    const/16 v8, 0x13

    if-lt v7, v8, :cond_4

    .line 129
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SmsMessage;

    .line 131
    .local v6, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_2

    .line 134
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v8

    const/16 v9, 0x15

    if-lt v8, v9, :cond_3

    .line 136
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/LollipopUtil;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 138
    :cond_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 144
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "pdus"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 145
    .local v4, "pdus":[Ljava/lang/Object;
    array-length v8, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v3, v4, v7

    .line 146
    .local v3, "pdu":Ljava/lang/Object;
    check-cast v3, [B

    .end local v3    # "pdu":Ljava/lang/Object;
    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 147
    .restart local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 151
    .end local v4    # "pdus":[Ljava/lang/Object;
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "SmsBroadcastReceiver"

    const-string v8, "Unable to retrieve originating address from SmsMessage"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isRepl(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 251
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Screen1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    .local v0, "appClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 255
    .local v4, "superClass":Ljava/lang/Class;
    const-class v6, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    const/4 v5, 0x1

    .line 261
    .end local v0    # "appClass":Ljava/lang/Class;
    .end local v1    # "classname":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "superClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return v5

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendingNotification "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v3, 0x0

    .line 216
    .local v3, "newIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".Screen1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "classname":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v4, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v3    # "newIntent":Landroid/content/Intent;
    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_1
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/high16 v8, 0x30000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 228
    .local v0, "activity":Landroid/app/PendingIntent;
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 229
    .local v5, "nm":Landroid/app/NotificationManager;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080090

    .line 230
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 231
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 233
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 234
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sms from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 235
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 236
    invoke-virtual {v8, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 237
    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 238
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->getCachedMsgCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 239
    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 241
    .local v6, "note":Landroid/app/Notification;
    const/4 v8, 0x0

    const/16 v9, 0x21c7

    invoke-virtual {v5, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 242
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification sent, classname: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 247
    .end local v0    # "activity":Landroid/app/PendingIntent;
    .end local v1    # "classname":Ljava/lang/String;
    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v5    # "nm":Landroid/app/NotificationManager;
    .end local v6    # "note":Landroid/app/Notification;
    .restart local v3    # "newIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "newIntent":Landroid/content/Intent;
    .restart local v1    # "classname":Ljava/lang/String;
    .restart local v4    # "newIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "newIntent":Landroid/content/Intent;
    .restart local v3    # "newIntent":Landroid/content/Intent;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v3, "SmsBroadcastReceiver"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "phone":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->isReceivingEnabled(Landroid/content/Context;)I

    move-result v2

    .line 83
    .local v2, "receivingEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 84
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Receiving is not enabled, ignoring message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->isRepl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .line 93
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, and either receivingEnabled is FOREGROUND or we are the repl."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    invoke-static {p1, v1, v0}, Lcom/google/appinventor/components/runtime/Texting;->handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " App in Foreground, delivering message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_3
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, but receivingEnabled == 2, sending notification."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
