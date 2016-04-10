#import "GLUCPersistenceDDL.h"


@implementation GLUCPersistenceDDL {

}


+ (NSString *)dropReadingTableNamed:(NSString *) readingTableName {
    NSString *dropStatement = @"";
    if (readingTableName && readingTableName.length)
        [NSString stringWithFormat:@"DROP TABLE IF EXISTS %@", readingTableName];
    return dropStatement;
}

+ (NSString *)createReadingTableNamed:(NSString *) readingTableName {
    NSString *createTableDDL = @"";
    if (readingTableName && readingTableName.length) {
        createTableDDL = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@ INTEGER PRIMARY KEY,%@ INTEGER,%@ INTEGER, %@ TIMESTAMP "
                                           "DEFAULT (datetime('now','localtime') ),%@ INTEGER DEFAULT 1,%@ TEXT DEFAULT NULL );",
                                   readingTableName, @"reading_id", @"reading", @"reading_type", @"reading_date", @"user_id", @"notes"];

    }
    return createTableDDL;
}

@end