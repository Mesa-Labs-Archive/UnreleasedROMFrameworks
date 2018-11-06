.class public final enum Ljava/nio/file/FileVisitOption;
.super Ljava/lang/Enum;
.source "FileVisitOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/FileVisitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/FileVisitOption;

.field public static final enum FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/nio/file/FileVisitOption;

    const-string/jumbo v1, "FOLLOW_LINKS"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/FileVisitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/FileVisitOption;

    sget-object v1, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    aput-object v1, v0, v2

    sput-object v0, Ljava/nio/file/FileVisitOption;->$VALUES:[Ljava/nio/file/FileVisitOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/FileVisitOption;
    .locals 1

    const-class v0, Ljava/nio/file/FileVisitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileVisitOption;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/FileVisitOption;
    .locals 1

    sget-object v0, Ljava/nio/file/FileVisitOption;->$VALUES:[Ljava/nio/file/FileVisitOption;

    return-object v0
.end method
