.class public Lcom/samsung/android/server/wifi/SemWifiConstants;
.super Ljava/lang/Object;
.source "SemWifiConstants.java"


# static fields
.field private static final DBG:Z

.field public static final KTT_KOR_OUI:I = 0x11c31700

.field public static final MOBILE_SAMSUNG_OUI:I = 0x321600

.field public static final REFRIGERATOR_OUI_TYPE:I = 0xf

.field public static final ROUTER_OUI_TYPE:I = 0xa0

.field public static final SAMSUNG_OUI:I = 0xf00000

.field private static final TAG:Ljava/lang/String; = "SemWifiConstants"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiConstants;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
