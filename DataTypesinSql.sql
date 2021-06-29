-- Text fields
--Binary fields
--Numeric fields
--AUTO_INCREMENT fields and other camps.

CHAR -- CAMPOS DE CARACTERES
VARCHAR --CAMPO DE CARACTERES

-- TEXT FIELDS
TINYTEXT --255 characters
TEXT -- 65k
MEDIUMTEXT -- 16M
LONGTEXT --4G

--BINARY TYPES
--byte = 8 bit of information
BYTE(n) --255 bytes
VARBINARY(n) --65K bytes
--small images - data
--not indexed or sorted

--BINARY LARGE OBJECT BLOB
-- Large raw data, files, images, word documents, PDFs, movies, etc. 
 TINYBLOB(n) --255
 BLOB(n) --65k
MEDIUMBLOB(n) --16M
LONGBLOB(n) --4G

--INTEGER NUMBERS
TINYINT --(-128, 128)
SMALLINT --(-32768, +32768)
INT OR INTEGER --(2 Billion)
BIGINT --(10**18ish)
-- FLOATING POINT NUMBERS

FLOAT--32BIT
DOUBLE--64BIT

--DATES
TIMESTAMP -- 'YYYY-MM-DD HH:MM:SS' (1970,2037)
DATETIME -- 'YYYY-MM-DD HH:MM:SS'
DATE -- 'YYYY-MM-DD'
TIME -- 'HH:MM:SS'
--Built-in MySQL function NOW()
INSERT CREATED_AT VALUE NOW()



