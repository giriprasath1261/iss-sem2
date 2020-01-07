class matrix:

    def __init__(self,row,column,a = 0):
        self.row = row
        self.column = column
        if a!=0:
            self.mat = a
        else:
            a = [[0 for c in range(column)]for r in range(row)]
            self.mat = a

    def __str__(self):
        string = ""
        for i in range(self.row):
            for j in range(self.column):
                string+= str(self.mat[i][j])
                string+= " "
            string+= "\n"
        return string

    def __setitem__(self,index,value):
        m,n = index
        self.mat[m][n]=value
        return

    def __getitem__(self,index):
        return self.mat[index]

    def transpose(self):
        m=self.row
        n=self.column
        for i in range(row):
            for j in range(column):
                self.tran[j][i] = self.mat[i][j]
        return self.tran

    def __add__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        sum = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                sum.mat[i][j] = self.mat[i][j] + other.mat[i][j]
        return sum.mat

    def __sub__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        diff = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                diff.mat[i][j] = self.mat[i][j] - other.mat[i][j]
        return diff.mat

    def __mul__(self,other):
        if(self.column!=other.row):
            print("dimensions dont match")
        else:
            prod=matrix(self.row,other.column)
            for i in range(self.row):
                for j in range(other.column):
                    for k in range(other.row):
                        prod.mat[i][j] = self.mat[i][k] * other.mat[k][j]
            return prod.mat

    def __rpow__(self,val):
        valprod = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                valprod.mat[i][j]=self.mat[i][j]*val
        return valprod.mat

    def __lt__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        lt = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                lt.mat[i][j] =(self.mat[i][j] < other.mat[i][j])
        return lt.mat

    def __gt__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        gt = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                gt.mat[i][j] =(self.mat[i][j] > other.mat[i][j])
        return gt.mat

    def __ge__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        ge = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                ge.mat[i][j] =(self.mat[i][j] >= other.mat[i][j])
        return ge.mat

    def __le__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        le = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                le.mat[i][j] =(self.mat[i][j] <= other.mat[i][j])
        return le.mat

    def __eq__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        eq = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                eq.mat[i][j] =(self.mat[i][j] == other.mat[i][j])
        return eq.mat

    def __ne__(self,other):
        if not (self.row == other.row) and (self.column == other.column): return 'The number of col and row is not equal'
        ne = matrix(self.row,self.column)
        for i in range(self.row):
            for j in range(self.column):
                ne.mat[i][j] =(self.mat[i][j] != other.mat[i][j])
        return ne.mat

class vector(matrix):

    def __init__(self,row,a=0):
        self.row = row
        self.column=1
        if a!=0
            self.mat=a
        else
            self.mat= [[0 for c in range(column)]for r in range(row)]

    def norm(self):
        dist=0
        for i in range(self.row):
            dist+=self.mat[i]*self.mat[i]
        return sqrt(dist)

    def __rmod__(self,other):
        prod=0
        for i in range(self.row):
            prod+=self.row*other.row
        return prod


# T = [[1,2,3],[4,5,6],[7,8,9]]
# U = [[1,2,3],[4,5,6],[7,8,9]]
# m = matrix(3,3,T)
# n = matrix(3,3,U)
# print(m[0][1])
# print(m==n)
