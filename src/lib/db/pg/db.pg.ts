// import { Logger } from "drizzle-orm";
import { drizzle as drizzlePg } from "drizzle-orm/node-postgres";
import { Pool } from "pg";

// class MyLogger implements Logger {
//   logQuery(query: string, params: unknown[]): void {
//     console.log({ query, params });
//   }
// }

const pool = new Pool({
  connectionString: process.env.POSTGRES_URL!,
  max: 20,
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 5000,
});

export const pgDb = drizzlePg(pool, {
  //   logger: new MyLogger(),
});
