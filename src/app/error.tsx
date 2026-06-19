"use client";

import { useEffect } from "react";

export default function GlobalError({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  useEffect(() => {
    console.error("Global error:", error);
  }, [error]);

  return (
    <div className="flex min-h-screen flex-col items-center justify-center gap-4 p-8">
      <div className="text-destructive text-4xl">⚠️</div>
      <h1 className="text-2xl font-semibold">Something went wrong!</h1>
      <p className="text-muted-foreground text-center max-w-md">
        An unexpected error occurred. Please try again.
      </p>
      <button
        onClick={() => reset()}
        className="rounded-lg bg-primary px-4 py-2 text-primary-foreground hover:bg-primary/90 transition-colors"
      >
        Try again
      </button>
    </div>
  );
}
