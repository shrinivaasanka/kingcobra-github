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

class ConvexOptimization(object):
	def eisenberg_gale_convex_program(self,no_of_goods,no_of_buyers):
		moneys=21234*numpy.random.rand(1,no_of_buyers)
		print moneys
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

		for i in xrange(3):
			eisenberg_gale_convex_function += logistic(utilities[i,0])*moneys[0,i]

		print eisenberg_gale_convex_function
		print "Curvature of Function:",eisenberg_gale_convex_function.curvature
		print "Sign of Function:",eisenberg_gale_convex_function.sign

		objective=Maximize(eisenberg_gale_convex_function)
		print objective

		constraints=[]

		print "Per unit Goods utilities matrix:"
		print goods_utilities
		print "Goods and buyers matrix:"
		print goods_buyers

		#print "constraints:"
		for i in xrange(no_of_buyers):
			constraint=0.0
			print constraint
			for j in xrange(3):
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
		print installed_solvers()
		if problem.is_dcp():
			problem.solve(solver=ECOS)
		else:
			print "Problem is not DCP(Disciplined Convex Program)"
		print problem.value

if __name__=="__main__":
	cvx=ConvexOptimization()
	cvx.eisenberg_gale_convex_program(10,10)
