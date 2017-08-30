#------------------------------------------------------------------------------------------
#NEURONRAIN KingCobra - Module for Kernelspace Messaging and Computational Economics  
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
##along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#-------------------------------------------------------------------------------------------------------
#Copyleft (Copyright+):
#Srinivasan Kannan
#(also known as: Ka.Shrinivaasan, Shrinivas Kannan)
#Ph: 9791499106, 9003082186
#Krishna iResearch Open Source Products Profiles:
#http://sourceforge.net/users/ka_shrinivaasan,
#https://github.com/shrinivaasanka,
#https://www.openhub.net/accounts/ka_shrinivaasan
#Personal website(research): https://sites.google.com/site/kuja27/
#emails: ka.shrinivaasan@gmail.com, shrinivas.kannan@gmail.com,
#kashrinivaasan@live.com
#--------------------------------------------------------------------------------------------------------

import math
from cvxpy import * 
import numpy
import dccp
import cvxopt

class ConvexOptimization(object):
	def eisenberg_gale_convex_program(self,no_of_goods,no_of_buyers):
		moneys=21234*numpy.random.rand(1,no_of_buyers)
		utilities=Variable(no_of_buyers,1)
		goods_utilities=10*numpy.random.rand(no_of_goods,no_of_buyers)
		goods_buyers=Variable(no_of_goods,no_of_buyers)

		###############################################
		#for i in xrange(3):
		#	money=Variable(numpy.random.randn())
		#	print money
		#	moneys[i]=money

		#for i in xrange(3):
		#	utility=Variable(numpy.random.randn())
		#	print utility
		#	utilities[i]=utility
		###############################################

		eisenberg_gale_convex_function=0.0

		for i in xrange(no_of_buyers):
			eisenberg_gale_convex_function += log(utilities[i,0])*moneys[0,i]

		print eisenberg_gale_convex_function
		print "Curvature of Function:",eisenberg_gale_convex_function.curvature
		print "Sign of Function:",eisenberg_gale_convex_function.sign

		objective=Maximize(eisenberg_gale_convex_function)
		print objective

		constraints=[]

		print "Number of Goods:",no_of_goods
		print "Number of Buyers:",no_of_buyers
		print "Per unit Goods utilities matrix:"
		print goods_utilities
		print "Goods and buyers matrix:"
		print goods_buyers

		print "constraints:"
		for i in xrange(no_of_buyers):
			constraint=0.0
			print constraint
			for j in xrange(no_of_goods):
				constraint += goods_utilities[i,j]*abs(goods_buyers[i,j])
			print constraint
			print constraint.curvature
			print constraint.sign
			constraints.append(utilities[i] == constraint)

		for j in xrange(no_of_buyers):
			constraint=0.0
			for i in xrange(no_of_buyers):
				constraint += abs(goods_buyers[i,j])
			print constraint
			print constraint.curvature
			print constraint.sign
			constraints.append(constraint <= 1)

		for i in xrange(no_of_buyers):
			for j in xrange(no_of_goods):
				constraint = abs(goods_buyers[i,j])
				print constraint
				print constraint.curvature
				print constraint.sign
				constraints.append(constraint >= 0)
		
		problem=Problem(objective,constraints)
		print "====================================="
		print "Installed Solvers:"
		print "====================================="
		print installed_solvers()
		print "Is Problem DCCP:",dccp.is_dccp(problem)
		print "Solver used is SCS"
		args=problem.get_problem_data(SCS)
		print "====================================="
		print "CVXPY args:"
		print "====================================="
		print args
		result=problem.solve(solver=SCS,verbose=True,method='dccp')
		print "====================================="
		print "Problem value:"
		print "====================================="
		print problem.value
		print "====================================="
		print "Result:"
		print "====================================="
		print result
		print "====================================="
		print "Utilities:"
		print "====================================="
		for i in xrange(no_of_buyers):
			print utilities[i,0].value
		print "====================================="
		print "Moneys:"
		print "====================================="
		for i in xrange(no_of_buyers):
			print moneys[0,i]
		print "====================================="
		print "Per Buyer Good Allocation:"
		print "====================================="
		for i in xrange(no_of_buyers):
			print "=================================="
			print "Buyer:",i
			print "=================================="
			for j in xrange(no_of_goods):
				print "Good:",j
				print goods_buyers[i,j].value
		print "====================================="
		print "Per Good Utility for Each Buyer:"
		print "====================================="
		for i in xrange(no_of_buyers):
			print "=================================="
			print "Buyer:",i
			print "=================================="
			for j in xrange(no_of_goods):
				print "Good:",j
				print goods_utilities[i,j]
		print "======================================"
		print "Per Good Market Clearing Price (from Karush-Kuhn-Tucker conditions):"
		print "======================================"
		prices=[]	
		for b in xrange(no_of_buyers):
			for g in xrange(no_of_goods):
				b1=b
				for g1 in xrange(no_of_goods):
						per_buyer_objective = goods_utilities[b1,g1] * goods_buyers[b1,g1]
				#print "Per buyer objective:",per_buyer_objective.value
				priceg = goods_utilities[g,b] * moneys[0,b] / (per_buyer_objective.value)
				prices.append(priceg)
		for g in xrange(no_of_goods):
			print "Good ",g," Market Clearing Price From Eisenberg-Gale Convex Program:",prices[g]

if __name__=="__main__":
	cvx=ConvexOptimization()
	cvx.eisenberg_gale_convex_program(10,10)
