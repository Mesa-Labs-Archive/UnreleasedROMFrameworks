.class public Ljava/lang/invoke/LambdaMetafactory;
.super Ljava/lang/Object;
.source "LambdaMetafactory.java"


# static fields
.field public static final FLAG_BRIDGES:I = 0x4

.field public static final FLAG_MARKERS:I = 0x2

.field public static final FLAG_SERIALIZABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs altMetafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/LambdaConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/LambdaConversionException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
