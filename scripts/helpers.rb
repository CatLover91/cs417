def aRandomNumber()
    result = Math.floor((Math.random() * 2000000) + 1);
    result = (result - 1000000) / 10000;
    return result;
end

// Set grid size and number of iterations
const int save iters=20;
const int total iters=200;
const int error every=2;
const int m=33,n=33;
const double xmin=−1,xmax=1;
const double ymin=−1,ymax=1;
//  Compute useful constants
const double pi=3.1415926535897932384626433832795;
const double omega=2/(1+sin(2∗pi/n));
const double dx=(xmax−xmin)/(m−1);
const double dy=(ymax−ymin)/(n−1);
const double dxxinv=1/(dx∗dx);
const double dyyinv=1/(dy∗dy);
const double dcent=1/(2∗(dxxinv+dyyinv));

# Input function
inline double f(int i,int j) {
    double x=xmin+i∗dx,y=ymin+j∗dy;
    return abs(x)>0.5||abs(y)>0.5?0:1;
}

# Common output and error routine
void output and error(char∗ filename,double ∗a,const int sn) {
    // Computes the error if sn%error every==0
    if(sn%error every==0) {
    18double z,error=0;int ij;
    for(int j=1;j<n−1;j++) {
    for(int i=1;i<m−1;i++) {
    ij=i+m∗j;
    z=f(i,j)−a[ij]∗(2∗dxxinv+2∗dyyinv)
    +dxxinv∗(a[ij−1]+a[ij+1])
    +dyyinv∗(a[ij−m]+a[ij+m]);
    error+=z∗z;
    }
    }
    cout << sn << " " << error∗dx∗dy << endl;
    }
    // Saves the matrix if sn<=save iters
    if(sn<=save iters) {
    int i,j,ij=0,ds=sizeof(float);
    float x,y,data float;const char ∗pfloat;
    pfloat=(const char∗)&data float;
    ofstream outfile;
    static char fname[256];
    sprintf(fname,"%s.%d",filename,sn);
    outfile.open(fname,fstream::out
    | fstream::trunc | fstream::binary);
    data float=m;outfile.write(pfloat,ds);
    for(i=0;i<m;i++) {
    x=xmin+i∗dx;
    data float=x;outfile.write(pfloat,ds);
    }
    for(j=0;j<n;j++) {
    y=ymin+j∗dy;
    data float=y;
    outfile.write(pfloat,ds);
    for(i=0;i<m;i++) {
    data float=a[ij++];
    outfile.write(pfloat,ds);
    }
    }
    outfile.close();
    }
}