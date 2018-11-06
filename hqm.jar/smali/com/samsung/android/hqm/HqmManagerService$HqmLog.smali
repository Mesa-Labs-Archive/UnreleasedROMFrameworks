.class Lcom/samsung/android/hqm/HqmManagerService$HqmLog;
.super Ljava/lang/Object;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HqmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HqmLog"
.end annotation


# instance fields
.field custom_dataset:Ljava/lang/String;

.field dev_custom_dataset:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field hitType:Ljava/lang/String;

.field id:Ljava/lang/String;

.field manufacture:Ljava/lang/String;

.field pri_custom_dataset:Ljava/lang/String;

.field type:I

.field ver:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->type:I

    iput-object p2, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->feature:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->hitType:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->ver:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->manufacture:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->dev_custom_dataset:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->custom_dataset:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;->pri_custom_dataset:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/HqmManagerService$HqmLog;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/hqm/HqmManagerService$HqmLog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
