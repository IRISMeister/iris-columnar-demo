CREATE TABLE test ( ts TimeStamp,int1 INTEGER, int2 INTEGER ,branch VARCHAR(2)) WITH STORAGETYPE = COLUMNAR
GO
CREATE INDEX idxts ON test(ts)
GO
CREATE INDEX idx1 ON test(int1)
GO
CREATE INDEX idx2 ON test(int2)
GO
CREATE INDEX idxbranch ON test(branch)
GO
