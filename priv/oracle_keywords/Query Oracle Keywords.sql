SELECT   k.COLUMN_VALUE              AS keyword,
         NVL (o.reserved, 'n/a')     AS oracle_reserved
FROM     (SELECT COLUMN_VALUE
          FROM   TABLE (
                     sys.dbms_debug_vc2coll (
                         'ADMIN',
                         'ALL',
                         'ALTER',
                         'AND',
                         'ANY',
                         'APPROXNUM',
                         'AS',
                         'ASC',
                         'AUTHENTICATION',
                         'AUTHORIZATION',
                         'BAG',
                         'BEGIN',
                         'BETWEEN',
                         'BFILE',
                         'BINARY_DOUBLE',
                         'BINARY_FLOAT',
                         'BITMAP',
                         'BLOB',
                         'BODY',
                         'BY',
                         'CALL',
                         'CASCADE',
                         'CASE',
                         'CHAR',
                         'CHECK',
                         'CLOB',
                         'CLOSE',
                         'CLUSTER',
                         'COMMIT',
                         'COMPARISON',
                         'CONNECT',
                         'CONSTRAINT',
                         'CONSTRAINTS',
                         'CONTENTS',
                         'CONTEXT',
                         'CONTINUE',
                         'CREATE',
                         'CROSS',
                         'CURRENT',
                         'CURSOR',
                         'DATABASE',
                         'DATAFILES',
                         'DATE',
                         'DBLINK',
                         'DEFAULT',
                         'DEFERRED',
                         'DELEGATE',
                         'DELETE',
                         'DESC',
                         'DIRECTORY',
                         'DISTINCT',
                         'DROP',
                         'ELSE',
                         'END',
                         'ENTERPRISE',
                         'ESCAPE',
                         'EXCEPT',
                         'EXECUTE',
                         'EXISTS',
                         'EXTERNALLY',
                         'FETCH',
                         'FILTER_WITH',
                         'FLOAT',
                         'FORCE',
                         'FOREIGN',
                         'FOUND',
                         'FROM',
                         'FULL',
                         'FUNCTION',
                         'FUNS',
                         'GLOBALLY',
                         'GOTO',
                         'GRANT',
                         'GROUP',
                         'HASHMAP',
                         'HAVING',
                         'HIERARCHY',
                         'HINT',
                         'IDENTIFIED',
                         'IF',
                         'IMMEDIATE',
                         'IN',
                         'INCLUDING',
                         'INDEX',
                         'INDICATOR',
                         'INNER',
                         'INSERT',
                         'INTERSECT',
                         'INTNUM',
                         'INTO',
                         'INVALIDATION',
                         'IS',
                         'JOIN',
                         'JSON',
                         'KEEP',
                         'KEY',
                         'KEYLIST',
                         'LEFT',
                         'LIKE',
                         'LINK',
                         'LOCAL',
                         'LOG',
                         'LONG',
                         'MATERIALIZED',
                         'MINUS',
                         'NAME',
                         'NATURAL',
                         'NCHAR',
                         'NCLOB',
                         'NO',
                         'NOCYCLE',
                         'NONE',
                         'NORM_WITH',
                         'NOT',
                         'NULLX',
                         'NUMBER',
                         'NVARCHAR2',
                         'OF',
                         'ON',
                         'ONLINE',
                         'OPEN',
                         'OPTION',
                         'OR',
                         'ORDER',
                         'ORDERED_SET',
                         'OUTER',
                         'PACKAGE',
                         'PARAMETER',
                         'PARTITION',
                         'PRESERVE',
                         'PRIMARY',
                         'PRIOR',
                         'PRIVILEGES',
                         'PROCEDURE',
                         'PROFILE',
                         'PUBLIC',
                         'PURGE',
                         'QUOTA',
                         'RAW',
                         'REFERENCES',
                         'REQUIRED',
                         'RETURN',
                         'RETURNING',
                         'REUSE',
                         'REVOKE',
                         'RIGHT',
                         'ROLE',
                         'ROLES',
                         'ROLLBACK',
                         'ROWID',
                         'SCHEMA',
                         'SELECT',
                         'SEQUENCE',
                         'SET',
                         'SOME',
                         'SQLERROR',
                         'START',
                         'STORAGE',
                         'STRING',
                         'SYNONYM',
                         'TABLE',
                         'TABLES',
                         'TABLESPACE',
                         'TEMPORARY',
                         'THEN',
                         'THROUGH',
                         'TIMESTAMP',
                         'TO',
                         'TRIGGER',
                         'TRUNCATE',
                         'TYPE',
                         'UNION',
                         'UNIQUE',
                         'UNLIMITED',
                         'UPDATE',
                         'UROWID',
                         'USER',
                         'USERS',
                         'USING',
                         'VALIDATE',
                         'VALUES',
                         'VARCHAR2',
                         'VIEW',
                         'WHEN',
                         'WHENEVER',
                         'WHERE',
                         'WITH',
                         'WORK',
                         'XMLTYPE',
                         '(',
                         ')',
                         '*',
                         '+',
                         ',',
                         '-',
                         '.',
                         '/',
                         ':=',
                         ';',
                         '=',
                         '=>',
                         'div',
                         '||'))) k
         LEFT OUTER JOIN v$reserved_words o ON k.COLUMN_VALUE = o.keyword
ORDER BY k.COLUMN_VALUE
