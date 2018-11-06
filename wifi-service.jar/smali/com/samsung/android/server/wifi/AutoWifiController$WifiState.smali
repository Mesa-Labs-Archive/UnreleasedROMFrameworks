.class final enum Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;
.super Ljava/lang/Enum;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WifiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

.field public static final enum WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

.field public static final enum WIFI_STATE_ON:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

.field public static final enum WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    const-string/jumbo v1, "WIFI_STATE_ON"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_ON:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    const-string/jumbo v1, "WIFI_STATE_SCANMODE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    new-instance v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    const-string/jumbo v1, "WIFI_STATE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_ON:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_SCANMODE:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->WIFI_STATE_OFF:Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->$VALUES:[Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;
    .locals 1

    const-class v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;->$VALUES:[Lcom/samsung/android/server/wifi/AutoWifiController$WifiState;

    return-object v0
.end method
