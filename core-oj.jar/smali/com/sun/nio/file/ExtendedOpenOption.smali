.class public final enum Lcom/sun/nio/file/ExtendedOpenOption;
.super Ljava/lang/Enum;
.source "ExtendedOpenOption.java"

# interfaces
.implements Ljava/nio/file/OpenOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/nio/file/ExtendedOpenOption;",
        ">;",
        "Ljava/nio/file/OpenOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/nio/file/ExtendedOpenOption;

.field public static final enum NOSHARE_DELETE:Lcom/sun/nio/file/ExtendedOpenOption;

.field public static final enum NOSHARE_READ:Lcom/sun/nio/file/ExtendedOpenOption;

.field public static final enum NOSHARE_WRITE:Lcom/sun/nio/file/ExtendedOpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sun/nio/file/ExtendedOpenOption;

    const-string/jumbo v1, "NOSHARE_READ"

    invoke-direct {v0, v1, v2}, Lcom/sun/nio/file/ExtendedOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_READ:Lcom/sun/nio/file/ExtendedOpenOption;

    new-instance v0, Lcom/sun/nio/file/ExtendedOpenOption;

    const-string/jumbo v1, "NOSHARE_WRITE"

    invoke-direct {v0, v1, v3}, Lcom/sun/nio/file/ExtendedOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_WRITE:Lcom/sun/nio/file/ExtendedOpenOption;

    new-instance v0, Lcom/sun/nio/file/ExtendedOpenOption;

    const-string/jumbo v1, "NOSHARE_DELETE"

    invoke-direct {v0, v1, v4}, Lcom/sun/nio/file/ExtendedOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_DELETE:Lcom/sun/nio/file/ExtendedOpenOption;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/nio/file/ExtendedOpenOption;

    sget-object v1, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_READ:Lcom/sun/nio/file/ExtendedOpenOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_WRITE:Lcom/sun/nio/file/ExtendedOpenOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sun/nio/file/ExtendedOpenOption;->NOSHARE_DELETE:Lcom/sun/nio/file/ExtendedOpenOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->$VALUES:[Lcom/sun/nio/file/ExtendedOpenOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/nio/file/ExtendedOpenOption;
    .locals 1

    const-class v0, Lcom/sun/nio/file/ExtendedOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/ExtendedOpenOption;

    return-object v0
.end method

.method public static values()[Lcom/sun/nio/file/ExtendedOpenOption;
    .locals 1

    sget-object v0, Lcom/sun/nio/file/ExtendedOpenOption;->$VALUES:[Lcom/sun/nio/file/ExtendedOpenOption;

    return-object v0
.end method
