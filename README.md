# Fuzzy-C-Means
Fuzzy C Means Classifcation 


This program will perform Fuzzy C Means Clustering(without using Inbuilt fuzzy toolbox in Matlab)

1) Run the script "sipproject.m". A MatLAb GUI will be displayed.
2) Input parameters are: 
    (i) For FCM classification: Input image(all formats supported by MatLab permissible), No. of maximum iterations,
    m(Fuzzification paramter, Termination criteria (usually kept between 0.001-0.01), and no. of clusters.
    (ii)For measuring Performance Index, input parameters are  Input Image, m(Fuzzification Parameters>1), No. of iterations,
        Termination condition, Minimum and Maximum value of number of clusters.
3) Please taKe care to input all parameters as integers. m can be float/double(>1).
4) Expected outputs:
   (i) Classification : Classified image (according to the given no. of clusters), Histogram, No.of Iterations which are
                        required for convergence. Also, the progress bar will display the no.of iterations and the progress
                        of the program.
   (ii) Performance Index: Here the user needs to tell the minimum and maximum no. of clusters and we will tell what is
         the optimum no. of clusters in that range. Output in this case is a graph(as pop-up) which will display performance index
        for different cluster sizes. We need to minimize the objective function, hence the no. of clusters which has the 
        least value is the most optimum.

As an example, classification result and performance index graph of a satellite image(test1.jpg in the attached folder)
is attached.(Classified image is saved as  test1classified.jpg and graph is saved as  test1graph.jpg)



For any queries and problems regarding this project, please contact himanshuchopra82@gmail.com or himanshu.chopra@iitb.ac.in



