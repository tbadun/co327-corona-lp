Subject To
 upper[manufacturing_metal1_factory1_1]: 3 x_respirator1_factory1_1
   - M_metal1_factory1_1 <= 0
 upper[manufacturing_metal1_factory1_2]: 3 x_respirator1_factory1_2
   - M_metal1_factory1_2 <= 0
 upper[manufacturing_plastic1_factory4_1]: 8 y_ppe3_factory4_1
   - M_plastic1_factory4_1 <= 0
 upper[manufacturing_plastic1_factory4_2]: 8 y_ppe3_factory4_2
   - M_plastic1_factory4_2 <= 0




 upper[demand_ppe_hospital1_1]: z_ppe1_hospital1->hospital2_1
   + z_ppe2_hospital1->hospital2_1 + z_ppe3_hospital1->hospital2_1
   - z_ppe1_DUMMY_RESERVE->hospital1_0 - z_ppe2_DUMMY_RESERVE->hospital1_0
   - z_ppe3_DUMMY_RESERVE->hospital1_0 <= -5
 upper[demand_respirators_hospital1_1]:
   z_respirator1_hospital1->hospital2_1
   + z_respirator2_hospital1->hospital2_1
   - z_respirator1_DUMMY_RESERVE->hospital1_0
   - z_respirator2_DUMMY_RESERVE->hospital1_0 <= -5
 upper[demand_ppe_hospital1_2]: - z_ppe1_factory1->hospital1_1
   - z_ppe2_factory1->hospital1_1 - z_ppe3_factory1->hospital1_1
   - z_ppe1_factory3->hospital1_1 - z_ppe2_factory3->hospital1_1
   - z_ppe3_factory3->hospital1_1 - z_ppe1_DUMMY_RESERVE->hospital1_1
   - z_ppe2_DUMMY_RESERVE->hospital1_1 - z_ppe3_DUMMY_RESERVE->hospital1_1
   + z_ppe1_hospital1->hospital2_2 + z_ppe2_hospital1->hospital2_2
   + z_ppe3_hospital1->hospital2_2 - M_ppe1_hospital1_1
   - M_ppe2_hospital1_1 - M_ppe3_hospital1_1 <= -10
 upper[demand_respirators_hospital1_2]:
   - z_respirator1_factory1->hospital1_1
   - z_respirator2_factory1->hospital1_1
   - z_respirator1_factory3->hospital1_1
   - z_respirator2_factory3->hospital1_1
   - z_respirator1_DUMMY_RESERVE->hospital1_1
   - z_respirator2_DUMMY_RESERVE->hospital1_1
   + z_respirator1_hospital1->hospital2_2
   + z_respirator2_hospital1->hospital2_2 - M_respirator1_hospital1_1
   - M_respirator2_hospital1_1 <= -10



 upper[demand_ppe_hospital4_1]: - z_ppe1_DUMMY_RESERVE->hospital4_0
   - z_ppe2_DUMMY_RESERVE->hospital4_0 - z_ppe3_DUMMY_RESERVE->hospital4_0
   <= -400
 upper[demand_respirators_hospital4_1]:
   - z_respirator1_DUMMY_RESERVE->hospital4_0
   - z_respirator2_DUMMY_RESERVE->hospital4_0 <= -400
 upper[demand_ppe_hospital4_2]: - z_ppe1_factory2->hospital4_1
   - z_ppe2_factory2->hospital4_1 - z_ppe3_factory2->hospital4_1
   - z_ppe1_factory4->hospital4_1 - z_ppe2_factory4->hospital4_1
   - z_ppe3_factory4->hospital4_1 - z_ppe1_DUMMY_RESERVE->hospital4_1
   - z_ppe2_DUMMY_RESERVE->hospital4_1 - z_ppe3_DUMMY_RESERVE->hospital4_1
   - M_ppe1_hospital4_1 - M_ppe2_hospital4_1 - M_ppe3_hospital4_1 <= -500
 upper[demand_respirators_hospital4_2]:
   - z_respirator1_factory2->hospital4_1
   - z_respirator2_factory2->hospital4_1
   - z_respirator1_factory4->hospital4_1
   - z_respirator2_factory4->hospital4_1
   - z_respirator1_DUMMY_RESERVE->hospital4_1
   - z_respirator2_DUMMY_RESERVE->hospital4_1 - M_respirator1_hospital4_1
   - M_respirator2_hospital4_1 <= -500
 


 upper[availability_metal1_factory1_1]: z_metal1_factory1->hospital1_1
   + z_metal1_factory1->hospital2_1 + z_metal1_factory1->factory4_1
   + z_metal1_factory1->factory2_1 - M_metal1_factory1_1 <= 0
 upper[availability_plastic1_factory1_1]: z_plastic1_factory1->hospital1_1
   + z_plastic1_factory1->hospital2_1 + z_plastic1_factory1->factory4_1
   + z_plastic1_factory1->factory2_1 - M_plastic1_factory1_1 <= 0
 upper[availability_ppe1_factory1_1]: z_ppe1_factory1->hospital1_1
   + z_ppe1_factory1->hospital2_1 + z_ppe1_factory1->factory4_1
   + z_ppe1_factory1->factory2_1 - M_ppe1_factory1_1 <= 0
 upper[availability_respirator1_factory1_1]:
   z_respirator1_factory1->hospital1_1
   + z_respirator1_factory1->hospital2_1
   + z_respirator1_factory1->factory4_1
   + z_respirator1_factory1->factory2_1 - M_respirator1_factory1_1 <= 0
 upper[availability_metal1_factory1_2]:
   - z_metal1_DUMMY_RESERVE->factory1_1 + z_metal1_factory1->hospital1_2
   + z_metal1_factory1->hospital2_2 + z_metal1_factory1->factory4_2
   + z_metal1_factory1->factory2_2 - M_metal1_factory1_2 <= 0
 upper[availability_plastic1_factory1_2]:
   - z_plastic1_DUMMY_RESERVE->factory1_1
   + z_plastic1_factory1->hospital1_2 + z_plastic1_factory1->hospital2_2
   + z_plastic1_factory1->factory4_2 + z_plastic1_factory1->factory2_2
   - M_plastic1_factory1_2 <= 0
 upper[availability_ppe1_factory1_2]: - z_ppe1_DUMMY_RESERVE->factory1_1
   + z_ppe1_factory1->hospital1_2 + z_ppe1_factory1->hospital2_2
   + z_ppe1_factory1->factory4_2 + z_ppe1_factory1->factory2_2
   - M_ppe1_factory1_2 <= 0
 upper[availability_respirator1_factory1_2]:
   - z_respirator1_DUMMY_RESERVE->factory1_1
   + z_respirator1_factory1->hospital1_2
   + z_respirator1_factory1->hospital2_2
   + z_respirator1_factory1->factory4_2
   + z_respirator1_factory1->factory2_2 - M_respirator1_factory1_2 <= 0



 upper[availability_metal1_DUMMY_RESERVE_1]:
   z_metal1_DUMMY_RESERVE->factory1_1 + z_metal1_DUMMY_RESERVE->factory2_1
   + z_metal1_DUMMY_RESERVE->factory3_1
   + z_metal1_DUMMY_RESERVE->factory4_1
   + z_metal1_DUMMY_RESERVE->hospital1_1
   + z_metal1_DUMMY_RESERVE->hospital2_1
   + z_metal1_DUMMY_RESERVE->hospital3_1
   + z_metal1_DUMMY_RESERVE->hospital4_1 - M_metal1_DUMMY_RESERVE_1 <= 0
 upper[availability_plastic1_DUMMY_RESERVE_1]:
   z_plastic1_DUMMY_RESERVE->factory1_1
   + z_plastic1_DUMMY_RESERVE->factory2_1
   + z_plastic1_DUMMY_RESERVE->factory3_1
   + z_plastic1_DUMMY_RESERVE->factory4_1
   + z_plastic1_DUMMY_RESERVE->hospital1_1
   + z_plastic1_DUMMY_RESERVE->hospital2_1
   + z_plastic1_DUMMY_RESERVE->hospital3_1
   + z_plastic1_DUMMY_RESERVE->hospital4_1 - M_plastic1_DUMMY_RESERVE_1
   <= 0
 upper[availability_ppe1_DUMMY_RESERVE_1]: z_ppe1_DUMMY_RESERVE->factory1_1
   + z_ppe1_DUMMY_RESERVE->factory2_1 + z_ppe1_DUMMY_RESERVE->factory3_1
   + z_ppe1_DUMMY_RESERVE->factory4_1 + z_ppe1_DUMMY_RESERVE->hospital1_1
   + z_ppe1_DUMMY_RESERVE->hospital2_1 + z_ppe1_DUMMY_RESERVE->hospital3_1
   + z_ppe1_DUMMY_RESERVE->hospital4_1 - M_ppe1_DUMMY_RESERVE_1 <= 0
 upper[availability_respirator1_DUMMY_RESERVE_1]:
   z_respirator1_DUMMY_RESERVE->factory1_1
   + z_respirator1_DUMMY_RESERVE->factory2_1
   + z_respirator1_DUMMY_RESERVE->factory3_1
   + z_respirator1_DUMMY_RESERVE->factory4_1
   + z_respirator1_DUMMY_RESERVE->hospital1_1
   + z_respirator1_DUMMY_RESERVE->hospital2_1
   + z_respirator1_DUMMY_RESERVE->hospital3_1
   + z_respirator1_DUMMY_RESERVE->hospital4_1
   - M_respirator1_DUMMY_RESERVE_1 <= 0
 upper[availability_metal1_DUMMY_RESERVE_2]:
   z_metal1_DUMMY_RESERVE->factory1_2 + z_metal1_DUMMY_RESERVE->factory2_2
   + z_metal1_DUMMY_RESERVE->factory3_2
   + z_metal1_DUMMY_RESERVE->factory4_2
   + z_metal1_DUMMY_RESERVE->hospital1_2
   + z_metal1_DUMMY_RESERVE->hospital2_2
   + z_metal1_DUMMY_RESERVE->hospital3_2
   + z_metal1_DUMMY_RESERVE->hospital4_2 - M_metal1_DUMMY_RESERVE_2 <= 0
 upper[availability_plastic1_DUMMY_RESERVE_2]:
   z_plastic1_DUMMY_RESERVE->factory1_2
   + z_plastic1_DUMMY_RESERVE->factory2_2
   + z_plastic1_DUMMY_RESERVE->factory3_2
   + z_plastic1_DUMMY_RESERVE->factory4_2
   + z_plastic1_DUMMY_RESERVE->hospital1_2
   + z_plastic1_DUMMY_RESERVE->hospital2_2
   + z_plastic1_DUMMY_RESERVE->hospital3_2
   + z_plastic1_DUMMY_RESERVE->hospital4_2 - M_plastic1_DUMMY_RESERVE_2
   <= 0
 upper[availability_ppe1_DUMMY_RESERVE_2]: z_ppe1_DUMMY_RESERVE->factory1_2
   + z_ppe1_DUMMY_RESERVE->factory2_2 + z_ppe1_DUMMY_RESERVE->factory3_2
   + z_ppe1_DUMMY_RESERVE->factory4_2 + z_ppe1_DUMMY_RESERVE->hospital1_2
   + z_ppe1_DUMMY_RESERVE->hospital2_2 + z_ppe1_DUMMY_RESERVE->hospital3_2
   + z_ppe1_DUMMY_RESERVE->hospital4_2 - M_ppe1_DUMMY_RESERVE_2 <= 0
 upper[availability_respirator1_DUMMY_RESERVE_2]:
   z_respirator1_DUMMY_RESERVE->factory1_2
   + z_respirator1_DUMMY_RESERVE->factory2_2
   + z_respirator1_DUMMY_RESERVE->factory3_2
   + z_respirator1_DUMMY_RESERVE->factory4_2
   + z_respirator1_DUMMY_RESERVE->hospital1_2
   + z_respirator1_DUMMY_RESERVE->hospital2_2
   + z_respirator1_DUMMY_RESERVE->hospital3_2
   + z_respirator1_DUMMY_RESERVE->hospital4_2
   - M_respirator1_DUMMY_RESERVE_2 <= 0



 upper[availability_metal1_hospital1_1]: z_metal1_hospital1->hospital2_1
   - M_metal1_hospital1_1 <= 0
 upper[availability_plastic1_hospital1_1]:
   z_plastic1_hospital1->hospital2_1 - M_plastic1_hospital1_1 <= 0
 upper[availability_ppe1_hospital1_1]: z_ppe1_hospital1->hospital2_1
   - M_ppe1_hospital1_1 <= 0
 upper[availability_respirator1_hospital1_1]:
   z_respirator1_hospital1->hospital2_1 - M_respirator1_hospital1_1 <= 0
 upper[availability_metal1_hospital1_2]: - z_metal1_factory1->hospital1_1
   - z_metal1_factory3->hospital1_1 - z_metal1_DUMMY_RESERVE->hospital1_1
   + z_metal1_hospital1->hospital2_2 - M_metal1_hospital1_2 <= 0
 upper[availability_plastic1_hospital1_2]:
   - z_plastic1_factory1->hospital1_1 - z_plastic1_factory3->hospital1_1
   - z_plastic1_DUMMY_RESERVE->hospital1_1
   + z_plastic1_hospital1->hospital2_2 - M_plastic1_hospital1_2 <= 0
 upper[availability_ppe1_hospital1_2]: - z_ppe1_factory1->hospital1_1
   - z_ppe1_factory3->hospital1_1 - z_ppe1_DUMMY_RESERVE->hospital1_1
   + z_ppe1_hospital1->hospital2_2 - M_ppe1_hospital1_2 <= 0
 upper[availability_respirator1_hospital1_2]:
   - z_respirator1_factory1->hospital1_1
   - z_respirator1_factory3->hospital1_1
   - z_respirator1_DUMMY_RESERVE->hospital1_1
   + z_respirator1_hospital1->hospital2_2 - M_respirator1_hospital1_2 <= 0






 upper[capacities_factory1->hospital1_1]: s_factory1->hospital1_1 <= 25
 upper[capacities_DUMMY_RESERVE->factory1_1]: s_DUMMY_RESERVE->factory1_1
   <= 1e+09




 eq[onhand_metal1_factory1_1]: M_metal1_factory1_1 = 140
 eq[onhand_metal1_factory1_2]: 3 x_respirator1_factory1_1
   - z_metal1_DUMMY_RESERVE->factory1_1 - M_metal1_factory1_1
   + M_metal1_factory1_2 = 0

 eq[onhand_metal1_DUMMY_RESERVE_1]: M_metal1_DUMMY_RESERVE_1 = 0
 eq[onhand_metal1_DUMMY_RESERVE_2]: M_metal1_DUMMY_RESERVE_2 = 0
 
 eq[onhand_metal1_hospital1_1]: M_metal1_hospital1_1 = 0
 eq[onhand_metal1_hospital1_2]: - z_metal1_factory1->hospital1_1
   - z_metal1_factory3->hospital1_1 - z_metal1_DUMMY_RESERVE->hospital1_1
   - M_metal1_hospital1_1 + M_metal1_hospital1_2 = 0

 eq[onhand_plastic1_factory1_1]: M_plastic1_factory1_1 = 100
 eq[onhand_plastic1_factory1_2]: 2 x_respirator1_factory1_1
   + 6 y_ppe1_factory1_1 - z_plastic1_DUMMY_RESERVE->factory1_1
   - M_plastic1_factory1_1 + M_plastic1_factory1_2 = 0

 eq[onhand_plastic1_DUMMY_RESERVE_1]: M_plastic1_DUMMY_RESERVE_1 = 0
 eq[onhand_plastic1_DUMMY_RESERVE_2]: M_plastic1_DUMMY_RESERVE_2 = 0
 
 eq[onhand_plastic1_hospital1_1]: M_plastic1_hospital1_1 = 0
 eq[onhand_plastic1_hospital1_2]: - z_plastic1_factory1->hospital1_1
   - z_plastic1_factory3->hospital1_1
   - z_plastic1_DUMMY_RESERVE->hospital1_1 - M_plastic1_hospital1_1
   + M_plastic1_hospital1_2 = 0

 eq[onhand_ppe1_factory1_1]: - y_ppe1_factory1_1 + M_ppe1_factory1_1 = 0
 eq[onhand_ppe1_factory1_2]: - y_ppe1_factory1_2
   - z_ppe1_DUMMY_RESERVE->factory1_1 - M_ppe1_factory1_1
   + M_ppe1_factory1_2 = 0

 eq[onhand_ppe1_DUMMY_RESERVE_1]: M_ppe1_DUMMY_RESERVE_1 = 1e+06
 eq[onhand_ppe1_DUMMY_RESERVE_2]: M_ppe1_DUMMY_RESERVE_2 = 1e+06

 eq[onhand_ppe1_hospital1_1]: M_ppe1_hospital1_1 = 0
 eq[onhand_ppe1_hospital1_2]: - z_ppe1_factory1->hospital1_1
   - z_ppe1_factory3->hospital1_1 - z_ppe1_DUMMY_RESERVE->hospital1_1
   - M_ppe1_hospital1_1 + M_ppe1_hospital1_2 = 0

 eq[onhand_respirator1_factory1_1]: - x_respirator1_factory1_1
   + M_respirator1_factory1_1 = 0
 eq[onhand_respirator1_factory1_2]: - x_respirator1_factory1_2
   - z_respirator1_DUMMY_RESERVE->factory1_1 - M_respirator1_factory1_1
   + M_respirator1_factory1_2 = 0
 
 eq[onhand_respirator1_DUMMY_RESERVE_1]: M_respirator1_DUMMY_RESERVE_1
   = 1e+06
 eq[onhand_respirator1_DUMMY_RESERVE_2]: M_respirator1_DUMMY_RESERVE_2
   = 1e+06

 eq[onhand_respirator1_hospital1_1]: M_respirator1_hospital1_1 = 0
 eq[onhand_respirator1_hospital1_2]: - z_respirator1_factory1->hospital1_1
   - z_respirator1_factory3->hospital1_1
   - z_respirator1_DUMMY_RESERVE->hospital1_1 - M_respirator1_hospital1_1
   + M_respirator1_hospital1_2 = 0






 eq[shipped_factory1->hospital1_1]: z_metal1_factory1->hospital1_1
   + z_metal2_factory1->hospital1_1 + z_plastic1_factory1->hospital1_1
   + z_plastic2_factory1->hospital1_1 + z_plastic3_factory1->hospital1_1
   + z_ppe1_factory1->hospital1_1 + z_ppe2_factory1->hospital1_1
   + z_ppe3_factory1->hospital1_1 + z_respirator1_factory1->hospital1_1
   + z_respirator2_factory1->hospital1_1 - s_factory1->hospital1_1 = 0

 eq[shipped_factory1->hospital1_2]: z_metal1_factory1->hospital1_2
   + z_metal2_factory1->hospital1_2 + z_plastic1_factory1->hospital1_2
   + z_plastic2_factory1->hospital1_2 + z_plastic3_factory1->hospital1_2
   + z_ppe1_factory1->hospital1_2 + z_ppe2_factory1->hospital1_2
   + z_ppe3_factory1->hospital1_2 + z_respirator1_factory1->hospital1_2
   + z_respirator2_factory1->hospital1_2 - s_factory1->hospital1_2 = 0

Generals
 x_respirator1_factory1_1 x_respirator1_factory2_1 x_respirator2_factory3_1
 x_respirator1_factory1_2 x_respirator1_factory2_2 x_respirator2_factory3_2
 x_respirator1_factory1_3 x_respirator1_factory2_3 x_respirator2_factory3_3
 x_respirator1_factory1_4 x_respirator1_factory2_4 x_respirator2_factory3_4
 x_respirator1_factory1_5 x_respirator1_factory2_5 x_respirator2_factory3_5
 x_respirator1_factory1_6 x_respirator1_factory2_6 x_respirator2_factory3_6
 x_respirator1_factory1_7 x_respirator1_factory2_7 x_respirator2_factory3_7
 x_respirator1_factory1_8 x_respirator1_factory2_8 x_respirator2_factory3_8
 x_respirator1_factory1_9 x_respirator1_factory2_9 x_respirator2_factory3_9
 x_respirator1_factory1_10 x_respirator1_factory2_10
 x_respirator2_factory3_10 x_respirator1_factory1_11
 x_respirator1_factory2_11 x_respirator2_factory3_11
 x_respirator1_factory1_12 x_respirator1_factory2_12
 x_respirator2_factory3_12 x_respirator1_factory1_13
 x_respirator1_factory2_13 x_respirator2_factory3_13
 x_respirator1_factory1_14 x_respirator1_factory2_14
 x_respirator2_factory3_14 x_respirator1_factory1_15
 x_respirator1_factory2_15 x_respirator2_factory3_15
 x_respirator1_factory1_16 x_respirator1_factory2_16
 x_respirator2_factory3_16 x_respirator1_factory1_17
 x_respirator1_factory2_17 x_respirator2_factory3_17
 x_respirator1_factory1_18 x_respirator1_factory2_18
 x_respirator2_factory3_18 x_respirator1_factory1_19
 x_respirator1_factory2_19 x_respirator2_factory3_19 y_ppe1_factory1_1
 y_ppe1_factory2_1 y_ppe2_factory2_1 y_ppe2_factory3_1 y_ppe3_factory3_1
 y_ppe3_factory4_1 y_ppe1_factory1_2 y_ppe1_factory2_2 y_ppe2_factory2_2
 y_ppe2_factory3_2 y_ppe3_factory3_2 y_ppe3_factory4_2 y_ppe1_factory1_3
 y_ppe1_factory2_3 y_ppe2_factory2_3 y_ppe2_factory3_3 y_ppe3_factory3_3
 y_ppe3_factory4_3 y_ppe1_factory1_4 y_ppe1_factory2_4 y_ppe2_factory2_4
 y_ppe2_factory3_4 y_ppe3_factory3_4 y_ppe3_factory4_4 y_ppe1_factory1_5
 y_ppe1_factory2_5 y_ppe2_factory2_5 y_ppe2_factory3_5 y_ppe3_factory3_5
 y_ppe3_factory4_5 y_ppe1_factory1_6 y_ppe1_factory2_6 y_ppe2_factory2_6
 y_ppe2_factory3_6 y_ppe3_factory3_6 y_ppe3_factory4_6 y_ppe1_factory1_7
 y_ppe1_factory2_7 y_ppe2_factory2_7 y_ppe2_factory3_7 y_ppe3_factory3_7
 y_ppe3_factory4_7 y_ppe1_factory1_8 y_ppe1_factory2_8 y_ppe2_factory2_8
 y_ppe2_factory3_8 y_ppe3_factory3_8 y_ppe3_factory4_8 y_ppe1_factory1_9
 y_ppe1_factory2_9 y_ppe2_factory2_9 y_ppe2_factory3_9 y_ppe3_factory3_9
 y_ppe3_factory4_9 y_ppe1_factory1_10 y_ppe1_factory2_10 y_ppe2_factory2_10
 y_ppe2_factory3_10 y_ppe3_factory3_10 y_ppe3_factory4_10
 y_ppe1_factory1_11 y_ppe1_factory2_11 y_ppe2_factory2_11
 y_ppe2_factory3_11 y_ppe3_factory3_11 y_ppe3_factory4_11
 y_ppe1_factory1_12 y_ppe1_factory2_12 y_ppe2_factory2_12
 y_ppe2_factory3_12 y_ppe3_factory3_12 y_ppe3_factory4_12
 y_ppe1_factory1_13 y_ppe1_factory2_13 y_ppe2_factory2_13
 y_ppe2_factory3_13 y_ppe3_factory3_13 y_ppe3_factory4_13
 y_ppe1_factory1_14 y_ppe1_factory2_14 y_ppe2_factory2_14
 y_ppe2_factory3_14 y_ppe3_factory3_14 y_ppe3_factory4_14
 y_ppe1_factory1_15 y_ppe1_factory2_15 y_ppe2_factory2_15
 y_ppe2_factory3_15 y_ppe3_factory3_15 y_ppe3_factory4_15
 y_ppe1_factory1_16 y_ppe1_factory2_16 y_ppe2_factory2_16
 y_ppe2_factory3_16 y_ppe3_factory3_16 y_ppe3_factory4_16
 y_ppe1_factory1_17 y_ppe1_factory2_17 y_ppe2_factory2_17
 y_ppe2_factory3_17 y_ppe3_factory3_17 y_ppe3_factory4_17
 y_ppe1_factory1_18 y_ppe1_factory2_18 y_ppe2_factory2_18
 y_ppe2_factory3_18 y_ppe3_factory3_18 y_ppe3_factory4_18
 y_ppe1_factory1_19 y_ppe1_factory2_19 y_ppe2_factory2_19
 y_ppe2_factory3_19 y_ppe3_factory3_19 y_ppe3_factory4_19
 z_metal1_factory1->hospital1_1 z_metal2_factory1->hospital1_1
 z_plastic1_factory1->hospital1_1 z_plastic2_factory1->hospital1_1
 z_plastic3_factory1->hospital1_1 z_ppe1_factory1->hospital1_1
 z_ppe2_factory1->hospital1_1 z_ppe3_factory1->hospital1_1
 z_respirator1_factory1->hospital1_1 z_respirator2_factory1->hospital1_1
 z_metal1_factory1->hospital2_1 z_metal2_factory1->hospital2_1
 z_plastic1_factory1->hospital2_1 z_plastic2_factory1->hospital2_1
 z_plastic3_factory1->hospital2_1 z_ppe1_factory1->hospital2_1
 z_ppe2_factory1->hospital2_1 z_ppe3_factory1->hospital2_1
 z_respirator1_factory1->hospital2_1 z_respirator2_factory1->hospital2_1
 z_metal1_factory2->hospital3_1 z_metal2_factory2->hospital3_1
 z_plastic1_factory2->hospital3_1 z_plastic2_factory2->hospital3_1
 z_plastic3_factory2->hospital3_1 z_ppe1_factory2->hospital3_1
 z_ppe2_factory2->hospital3_1 z_ppe3_factory2->hospital3_1
 z_respirator1_factory2->hospital3_1 z_respirator2_factory2->hospital3_1
 z_metal1_factory2->hospital4_1 z_metal2_factory2->hospital4_1
 z_plastic1_factory2->hospital4_1 z_plastic2_factory2->hospital4_1
 z_plastic3_factory2->hospital4_1 z_ppe1_factory2->hospital4_1
 z_ppe2_factory2->hospital4_1 z_ppe3_factory2->hospital4_1
 z_respirator1_factory2->hospital4_1 z_respirator2_factory2->hospital4_1
 z_metal1_factory3->hospital1_1 z_metal2_factory3->hospital1_1
 z_plastic1_factory3->hospital1_1 z_plastic2_factory3->hospital1_1
 z_plastic3_factory3->hospital1_1 z_ppe1_factory3->hospital1_1
 z_ppe2_factory3->hospital1_1 z_ppe3_factory3->hospital1_1
 z_respirator1_factory3->hospital1_1 z_respirator2_factory3->hospital1_1
 z_metal1_factory3->hospital2_1 z_metal2_factory3->hospital2_1
 z_plastic1_factory3->hospital2_1 z_plastic2_factory3->hospital2_1
 z_plastic3_factory3->hospital2_1 z_ppe1_factory3->hospital2_1
 z_ppe2_factory3->hospital2_1 z_ppe3_factory3->hospital2_1
 z_respirator1_factory3->hospital2_1 z_respirator2_factory3->hospital2_1
 z_metal1_factory4->hospital3_1 z_metal2_factory4->hospital3_1
 z_plastic1_factory4->hospital3_1 z_plastic2_factory4->hospital3_1
 z_plastic3_factory4->hospital3_1 z_ppe1_factory4->hospital3_1
 z_ppe2_factory4->hospital3_1 z_ppe3_factory4->hospital3_1
 z_respirator1_factory4->hospital3_1 z_respirator2_factory4->hospital3_1
 z_metal1_factory4->hospital4_1 z_metal2_factory4->hospital4_1
 z_plastic1_factory4->hospital4_1 z_plastic2_factory4->hospital4_1
 z_plastic3_factory4->hospital4_1 z_ppe1_factory4->hospital4_1
 z_ppe2_factory4->hospital4_1 z_ppe3_factory4->hospital4_1
 z_respirator1_factory4->hospital4_1 z_respirator2_factory4->hospital4_1
 z_metal1_factory1->factory4_1 z_metal2_factory1->factory4_1
 z_plastic1_factory1->factory4_1 z_plastic2_factory1->factory4_1
 z_plastic3_factory1->factory4_1 z_ppe1_factory1->factory4_1
 z_ppe2_factory1->factory4_1 z_ppe3_factory1->factory4_1
 z_respirator1_factory1->factory4_1 z_respirator2_factory1->factory4_1
 z_metal1_factory1->factory2_1 z_metal2_factory1->factory2_1
 z_plastic1_factory1->factory2_1 z_plastic2_factory1->factory2_1
 z_plastic3_factory1->factory2_1 z_ppe1_factory1->factory2_1
 z_ppe2_factory1->factory2_1 z_ppe3_factory1->factory2_1
 z_respirator1_factory1->factory2_1 z_respirator2_factory1->factory2_1
 z_metal1_factory4->factory2_1 z_metal2_factory4->factory2_1
 z_plastic1_factory4->factory2_1 z_plastic2_factory4->factory2_1
 z_plastic3_factory4->factory2_1 z_ppe1_factory4->factory2_1
 z_ppe2_factory4->factory2_1 z_ppe3_factory4->factory2_1
 z_respirator1_factory4->factory2_1 z_respirator2_factory4->factory2_1
 z_metal1_hospital1->hospital2_1 z_metal2_hospital1->hospital2_1
 z_plastic1_hospital1->hospital2_1 z_plastic2_hospital1->hospital2_1
 z_plastic3_hospital1->hospital2_1 z_ppe1_hospital1->hospital2_1
 z_ppe2_hospital1->hospital2_1 z_ppe3_hospital1->hospital2_1
 z_respirator1_hospital1->hospital2_1 z_respirator2_hospital1->hospital2_1
 z_metal1_hospita2->hospital3_1 z_metal2_hospita2->hospital3_1
 z_plastic1_hospita2->hospital3_1 z_plastic2_hospita2->hospital3_1
 z_plastic3_hospita2->hospital3_1 z_ppe1_hospita2->hospital3_1
 z_ppe2_hospita2->hospital3_1 z_ppe3_hospita2->hospital3_1
 z_respirator1_hospita2->hospital3_1 z_respirator2_hospita2->hospital3_1
 z_metal1_DUMMY_RESERVE->factory1_1 z_metal2_DUMMY_RESERVE->factory1_1
 z_plastic1_DUMMY_RESERVE->factory1_1 z_plastic2_DUMMY_RESERVE->factory1_1
 z_plastic3_DUMMY_RESERVE->factory1_1 z_ppe1_DUMMY_RESERVE->factory1_1
 z_ppe2_DUMMY_RESERVE->factory1_1 z_ppe3_DUMMY_RESERVE->factory1_1
 z_respirator1_DUMMY_RESERVE->factory1_1
 z_respirator2_DUMMY_RESERVE->factory1_1 z_metal1_DUMMY_RESERVE->factory2_1
 z_metal2_DUMMY_RESERVE->factory2_1 z_plastic1_DUMMY_RESERVE->factory2_1
 z_plastic2_DUMMY_RESERVE->factory2_1 z_plastic3_DUMMY_RESERVE->factory2_1
 z_ppe1_DUMMY_RESERVE->factory2_1 z_ppe2_DUMMY_RESERVE->factory2_1
 z_ppe3_DUMMY_RESERVE->factory2_1 z_respirator1_DUMMY_RESERVE->factory2_1
 z_respirator2_DUMMY_RESERVE->factory2_1 z_metal1_DUMMY_RESERVE->factory3_1
 z_metal2_DUMMY_RESERVE->factory3_1 z_plastic1_DUMMY_RESERVE->factory3_1
 z_plastic2_DUMMY_RESERVE->factory3_1 z_plastic3_DUMMY_RESERVE->factory3_1
 z_ppe1_DUMMY_RESERVE->factory3_1 z_ppe2_DUMMY_RESERVE->factory3_1
 z_ppe3_DUMMY_RESERVE->factory3_1 z_respirator1_DUMMY_RESERVE->factory3_1
 z_respirator2_DUMMY_RESERVE->factory3_1 z_metal1_DUMMY_RESERVE->factory4_1
 z_metal2_DUMMY_RESERVE->factory4_1 z_plastic1_DUMMY_RESERVE->factory4_1
 z_plastic2_DUMMY_RESERVE->factory4_1 z_plastic3_DUMMY_RESERVE->factory4_1
 z_ppe1_DUMMY_RESERVE->factory4_1 z_ppe2_DUMMY_RESERVE->factory4_1
 z_ppe3_DUMMY_RESERVE->factory4_1 z_respirator1_DUMMY_RESERVE->factory4_1
 z_respirator2_DUMMY_RESERVE->factory4_1
 z_metal1_DUMMY_RESERVE->hospital1_1 z_metal2_DUMMY_RESERVE->hospital1_1
 z_plastic1_DUMMY_RESERVE->hospital1_1
 z_plastic2_DUMMY_RESERVE->hospital1_1
 z_plastic3_DUMMY_RESERVE->hospital1_1 z_ppe1_DUMMY_RESERVE->hospital1_1
 z_ppe2_DUMMY_RESERVE->hospital1_1 z_ppe3_DUMMY_RESERVE->hospital1_1
 z_respirator1_DUMMY_RESERVE->hospital1_1
 z_respirator2_DUMMY_RESERVE->hospital1_1
 z_metal1_DUMMY_RESERVE->hospital2_1 z_metal2_DUMMY_RESERVE->hospital2_1
 z_plastic1_DUMMY_RESERVE->hospital2_1
 z_plastic2_DUMMY_RESERVE->hospital2_1
 z_plastic3_DUMMY_RESERVE->hospital2_1 z_ppe1_DUMMY_RESERVE->hospital2_1
 z_ppe2_DUMMY_RESERVE->hospital2_1 z_ppe3_DUMMY_RESERVE->hospital2_1
 z_respirator1_DUMMY_RESERVE->hospital2_1
 z_respirator2_DUMMY_RESERVE->hospital2_1
 z_metal1_DUMMY_RESERVE->hospital3_1 z_metal2_DUMMY_RESERVE->hospital3_1
 z_plastic1_DUMMY_RESERVE->hospital3_1
 z_plastic2_DUMMY_RESERVE->hospital3_1
 z_plastic3_DUMMY_RESERVE->hospital3_1 z_ppe1_DUMMY_RESERVE->hospital3_1
 z_ppe2_DUMMY_RESERVE->hospital3_1 z_ppe3_DUMMY_RESERVE->hospital3_1
 z_respirator1_DUMMY_RESERVE->hospital3_1
 z_respirator2_DUMMY_RESERVE->hospital3_1
 z_metal1_DUMMY_RESERVE->hospital4_1 z_metal2_DUMMY_RESERVE->hospital4_1
 z_plastic1_DUMMY_RESERVE->hospital4_1
 z_plastic2_DUMMY_RESERVE->hospital4_1
 z_plastic3_DUMMY_RESERVE->hospital4_1 z_ppe1_DUMMY_RESERVE->hospital4_1
 z_ppe2_DUMMY_RESERVE->hospital4_1 z_ppe3_DUMMY_RESERVE->hospital4_1
 z_respirator1_DUMMY_RESERVE->hospital4_1
 z_respirator2_DUMMY_RESERVE->hospital4_1 z_metal1_factory1->hospital1_2
 z_metal2_factory1->hospital1_2 z_plastic1_factory1->hospital1_2
 z_plastic2_factory1->hospital1_2 z_plastic3_factory1->hospital1_2
 z_ppe1_factory1->hospital1_2 z_ppe2_factory1->hospital1_2
 z_ppe3_factory1->hospital1_2 z_respirator1_factory1->hospital1_2
 z_respirator2_factory1->hospital1_2 z_metal1_factory1->hospital2_2
 z_metal2_factory1->hospital2_2 z_plastic1_factory1->hospital2_2
 z_plastic2_factory1->hospital2_2 z_plastic3_factory1->hospital2_2
 z_ppe1_factory1->hospital2_2 z_ppe2_factory1->hospital2_2
 z_ppe3_factory1->hospital2_2 z_respirator1_factory1->hospital2_2
 z_respirator2_factory1->hospital2_2 z_metal1_factory2->hospital3_2
 z_metal2_factory2->hospital3_2 z_plastic1_factory2->hospital3_2
 z_plastic2_factory2->hospital3_2 z_plastic3_factory2->hospital3_2
 z_ppe1_factory2->hospital3_2 z_ppe2_factory2->hospital3_2
 z_ppe3_factory2->hospital3_2 z_respirator1_factory2->hospital3_2
 z_respirator2_factory2->hospital3_2 z_metal1_factory2->hospital4_2
 z_metal2_factory2->hospital4_2 z_plastic1_factory2->hospital4_2
 z_plastic2_factory2->hospital4_2 z_plastic3_factory2->hospital4_2
 z_ppe1_factory2->hospital4_2 z_ppe2_factory2->hospital4_2
 z_ppe3_factory2->hospital4_2 z_respirator1_factory2->hospital4_2
 z_respirator2_factory2->hospital4_2 z_metal1_factory3->hospital1_2
 z_metal2_factory3->hospital1_2 z_plastic1_factory3->hospital1_2
 z_plastic2_factory3->hospital1_2 z_plastic3_factory3->hospital1_2
 z_ppe1_factory3->hospital1_2 z_ppe2_factory3->hospital1_2
 z_ppe3_factory3->hospital1_2 z_respirator1_factory3->hospital1_2
 z_respirator2_factory3->hospital1_2 z_metal1_factory3->hospital2_2
 z_metal2_factory3->hospital2_2 z_plastic1_factory3->hospital2_2
 z_plastic2_factory3->hospital2_2 z_plastic3_factory3->hospital2_2
 z_ppe1_factory3->hospital2_2 z_ppe2_factory3->hospital2_2
 z_ppe3_factory3->hospital2_2 z_respirator1_factory3->hospital2_2
 z_respirator2_factory3->hospital2_2 z_metal1_factory4->hospital3_2
 z_metal2_factory4->hospital3_2 z_plastic1_factory4->hospital3_2
 z_plastic2_factory4->hospital3_2 z_plastic3_factory4->hospital3_2
 z_ppe1_factory4->hospital3_2 z_ppe2_factory4->hospital3_2
 z_ppe3_factory4->hospital3_2 z_respirator1_factory4->hospital3_2
 z_respirator2_factory4->hospital3_2 z_metal1_factory4->hospital4_2
 z_metal2_factory4->hospital4_2 z_plastic1_factory4->hospital4_2
 z_plastic2_factory4->hospital4_2 z_plastic3_factory4->hospital4_2
 z_ppe1_factory4->hospital4_2 z_ppe2_factory4->hospital4_2
 z_ppe3_factory4->hospital4_2 z_respirator1_factory4->hospital4_2
 z_respirator2_factory4->hospital4_2 z_metal1_factory1->factory4_2
 z_metal2_factory1->factory4_2 z_plastic1_factory1->factory4_2
 z_plastic2_factory1->factory4_2 z_plastic3_factory1->factory4_2
 z_ppe1_factory1->factory4_2 z_ppe2_factory1->factory4_2
 z_ppe3_factory1->factory4_2 z_respirator1_factory1->factory4_2
 z_respirator2_factory1->factory4_2 z_metal1_factory1->factory2_2
 z_metal2_factory1->factory2_2 z_plastic1_factory1->factory2_2
 z_plastic2_factory1->factory2_2 z_plastic3_factory1->factory2_2
 z_ppe1_factory1->factory2_2 z_ppe2_factory1->factory2_2
 z_ppe3_factory1->factory2_2 z_respirator1_factory1->factory2_2
 z_respirator2_factory1->factory2_2 z_metal1_factory4->factory2_2
 z_metal2_factory4->factory2_2 z_plastic1_factory4->factory2_2
 z_plastic2_factory4->factory2_2 z_plastic3_factory4->factory2_2
 z_ppe1_factory4->factory2_2 z_ppe2_factory4->factory2_2
 z_ppe3_factory4->factory2_2 z_respirator1_factory4->factory2_2
 z_respirator2_factory4->factory2_2 z_metal1_hospital1->hospital2_2
 z_metal2_hospital1->hospital2_2 z_plastic1_hospital1->hospital2_2
 z_plastic2_hospital1->hospital2_2 z_plastic3_hospital1->hospital2_2
 z_ppe1_hospital1->hospital2_2 z_ppe2_hospital1->hospital2_2
 z_ppe3_hospital1->hospital2_2 z_respirator1_hospital1->hospital2_2
 z_respirator2_hospital1->hospital2_2 z_metal1_hospita2->hospital3_2
 z_metal2_hospita2->hospital3_2 z_plastic1_hospita2->hospital3_2
 z_plastic2_hospita2->hospital3_2 z_plastic3_hospita2->hospital3_2
 z_ppe1_hospita2->hospital3_2 z_ppe2_hospita2->hospital3_2
 z_ppe3_hospita2->hospital3_2 z_respirator1_hospita2->hospital3_2
 z_respirator2_hospita2->hospital3_2 z_metal1_DUMMY_RESERVE->factory1_2
 z_metal2_DUMMY_RESERVE->factory1_2 z_plastic1_DUMMY_RESERVE->factory1_2
 z_plastic2_DUMMY_RESERVE->factory1_2 z_plastic3_DUMMY_RESERVE->factory1_2
 z_ppe1_DUMMY_RESERVE->factory1_2 z_ppe2_DUMMY_RESERVE->factory1_2
 z_ppe3_DUMMY_RESERVE->factory1_2 z_respirator1_DUMMY_RESERVE->factory1_2
 z_respirator2_DUMMY_RESERVE->factory1_2 z_metal1_DUMMY_RESERVE->factory2_2
 z_metal2_DUMMY_RESERVE->factory2_2 z_plastic1_DUMMY_RESERVE->factory2_2
 z_plastic2_DUMMY_RESERVE->factory2_2 z_plastic3_DUMMY_RESERVE->factory2_2
 z_ppe1_DUMMY_RESERVE->factory2_2 z_ppe2_DUMMY_RESERVE->factory2_2
 z_ppe3_DUMMY_RESERVE->factory2_2 z_respirator1_DUMMY_RESERVE->factory2_2
 z_respirator2_DUMMY_RESERVE->factory2_2 z_metal1_DUMMY_RESERVE->factory3_2
 z_metal2_DUMMY_RESERVE->factory3_2 z_plastic1_DUMMY_RESERVE->factory3_2
 z_plastic2_DUMMY_RESERVE->factory3_2 z_plastic3_DUMMY_RESERVE->factory3_2
 z_ppe1_DUMMY_RESERVE->factory3_2 z_ppe2_DUMMY_RESERVE->factory3_2
 z_ppe3_DUMMY_RESERVE->factory3_2 z_respirator1_DUMMY_RESERVE->factory3_2
 z_respirator2_DUMMY_RESERVE->factory3_2 z_metal1_DUMMY_RESERVE->factory4_2
 z_metal2_DUMMY_RESERVE->factory4_2 z_plastic1_DUMMY_RESERVE->factory4_2
 z_plastic2_DUMMY_RESERVE->factory4_2 z_plastic3_DUMMY_RESERVE->factory4_2
 z_ppe1_DUMMY_RESERVE->factory4_2 z_ppe2_DUMMY_RESERVE->factory4_2
 z_ppe3_DUMMY_RESERVE->factory4_2 z_respirator1_DUMMY_RESERVE->factory4_2
 z_respirator2_DUMMY_RESERVE->factory4_2
 z_metal1_DUMMY_RESERVE->hospital1_2 z_metal2_DUMMY_RESERVE->hospital1_2
 z_plastic1_DUMMY_RESERVE->hospital1_2
 z_plastic2_DUMMY_RESERVE->hospital1_2
 z_plastic3_DUMMY_RESERVE->hospital1_2 z_ppe1_DUMMY_RESERVE->hospital1_2
 z_ppe2_DUMMY_RESERVE->hospital1_2 z_ppe3_DUMMY_RESERVE->hospital1_2
 z_respirator1_DUMMY_RESERVE->hospital1_2
 z_respirator2_DUMMY_RESERVE->hospital1_2
 z_metal1_DUMMY_RESERVE->hospital2_2 z_metal2_DUMMY_RESERVE->hospital2_2
 z_plastic1_DUMMY_RESERVE->hospital2_2
 z_plastic2_DUMMY_RESERVE->hospital2_2
 z_plastic3_DUMMY_RESERVE->hospital2_2 z_ppe1_DUMMY_RESERVE->hospital2_2
 z_ppe2_DUMMY_RESERVE->hospital2_2 z_ppe3_DUMMY_RESERVE->hospital2_2
 z_respirator1_DUMMY_RESERVE->hospital2_2
 z_respirator2_DUMMY_RESERVE->hospital2_2
 z_metal1_DUMMY_RESERVE->hospital3_2 z_metal2_DUMMY_RESERVE->hospital3_2
 z_plastic1_DUMMY_RESERVE->hospital3_2
 z_plastic2_DUMMY_RESERVE->hospital3_2
 z_plastic3_DUMMY_RESERVE->hospital3_2 z_ppe1_DUMMY_RESERVE->hospital3_2
 z_ppe2_DUMMY_RESERVE->hospital3_2 z_ppe3_DUMMY_RESERVE->hospital3_2
 z_respirator1_DUMMY_RESERVE->hospital3_2
 z_respirator2_DUMMY_RESERVE->hospital3_2
 z_metal1_DUMMY_RESERVE->hospital4_2 z_metal2_DUMMY_RESERVE->hospital4_2
 z_plastic1_DUMMY_RESERVE->hospital4_2
 z_plastic2_DUMMY_RESERVE->hospital4_2
 z_plastic3_DUMMY_RESERVE->hospital4_2 z_ppe1_DUMMY_RESERVE->hospital4_2
 z_ppe2_DUMMY_RESERVE->hospital4_2 z_ppe3_DUMMY_RESERVE->hospital4_2
 z_respirator1_DUMMY_RESERVE->hospital4_2
 z_respirator2_DUMMY_RESERVE->hospital4_2 z_metal1_factory1->hospital1_3
 z_metal2_factory1->hospital1_3 z_plastic1_factory1->hospital1_3
 z_plastic2_factory1->hospital1_3 z_plastic3_factory1->hospital1_3
 z_ppe1_factory1->hospital1_3 z_ppe2_factory1->hospital1_3
 z_ppe3_factory1->hospital1_3 z_respirator1_factory1->hospital1_3
 z_respirator2_factory1->hospital1_3 z_metal1_factory1->hospital2_3
 z_metal2_factory1->hospital2_3 z_plastic1_factory1->hospital2_3
 z_plastic2_factory1->hospital2_3 z_plastic3_factory1->hospital2_3
 z_ppe1_factory1->hospital2_3 z_ppe2_factory1->hospital2_3
 z_ppe3_factory1->hospital2_3 z_respirator1_factory1->hospital2_3
 z_respirator2_factory1->hospital2_3 z_metal1_factory2->hospital3_3
 z_metal2_factory2->hospital3_3 z_plastic1_factory2->hospital3_3
 z_plastic2_factory2->hospital3_3 z_plastic3_factory2->hospital3_3
 z_ppe1_factory2->hospital3_3 z_ppe2_factory2->hospital3_3
 z_ppe3_factory2->hospital3_3 z_respirator1_factory2->hospital3_3
 z_respirator2_factory2->hospital3_3 z_metal1_factory2->hospital4_3
 z_metal2_factory2->hospital4_3 z_plastic1_factory2->hospital4_3
 z_plastic2_factory2->hospital4_3 z_plastic3_factory2->hospital4_3
 z_ppe1_factory2->hospital4_3 z_ppe2_factory2->hospital4_3
 z_ppe3_factory2->hospital4_3 z_respirator1_factory2->hospital4_3
 z_respirator2_factory2->hospital4_3 z_metal1_factory3->hospital1_3
 z_metal2_factory3->hospital1_3 z_plastic1_factory3->hospital1_3
 z_plastic2_factory3->hospital1_3 z_plastic3_factory3->hospital1_3
 z_ppe1_factory3->hospital1_3 z_ppe2_factory3->hospital1_3
 z_ppe3_factory3->hospital1_3 z_respirator1_factory3->hospital1_3
 z_respirator2_factory3->hospital1_3 z_metal1_factory3->hospital2_3
 z_metal2_factory3->hospital2_3 z_plastic1_factory3->hospital2_3
 z_plastic2_factory3->hospital2_3 z_plastic3_factory3->hospital2_3
 z_ppe1_factory3->hospital2_3 z_ppe2_factory3->hospital2_3
 z_ppe3_factory3->hospital2_3 z_respirator1_factory3->hospital2_3
 z_respirator2_factory3->hospital2_3 z_metal1_factory4->hospital3_3
 z_metal2_factory4->hospital3_3 z_plastic1_factory4->hospital3_3
 z_plastic2_factory4->hospital3_3 z_plastic3_factory4->hospital3_3
 z_ppe1_factory4->hospital3_3 z_ppe2_factory4->hospital3_3
 z_ppe3_factory4->hospital3_3 z_respirator1_factory4->hospital3_3
 z_respirator2_factory4->hospital3_3 z_metal1_factory4->hospital4_3
 z_metal2_factory4->hospital4_3 z_plastic1_factory4->hospital4_3
 z_plastic2_factory4->hospital4_3 z_plastic3_factory4->hospital4_3
 z_ppe1_factory4->hospital4_3 z_ppe2_factory4->hospital4_3
 z_ppe3_factory4->hospital4_3 z_respirator1_factory4->hospital4_3
 z_respirator2_factory4->hospital4_3 z_metal1_factory1->factory4_3
 z_metal2_factory1->factory4_3 z_plastic1_factory1->factory4_3
 z_plastic2_factory1->factory4_3 z_plastic3_factory1->factory4_3
 z_ppe1_factory1->factory4_3 z_ppe2_factory1->factory4_3
 z_ppe3_factory1->factory4_3 z_respirator1_factory1->factory4_3
 z_respirator2_factory1->factory4_3 z_metal1_factory1->factory2_3
 z_metal2_factory1->factory2_3 z_plastic1_factory1->factory2_3
 z_plastic2_factory1->factory2_3 z_plastic3_factory1->factory2_3
 z_ppe1_factory1->factory2_3 z_ppe2_factory1->factory2_3
 z_ppe3_factory1->factory2_3 z_respirator1_factory1->factory2_3
 z_respirator2_factory1->factory2_3 z_metal1_factory4->factory2_3
 z_metal2_factory4->factory2_3 z_plastic1_factory4->factory2_3
 z_plastic2_factory4->factory2_3 z_plastic3_factory4->factory2_3
 z_ppe1_factory4->factory2_3 z_ppe2_factory4->factory2_3
 z_ppe3_factory4->factory2_3 z_respirator1_factory4->factory2_3
 z_respirator2_factory4->factory2_3 z_metal1_hospital1->hospital2_3
 z_metal2_hospital1->hospital2_3 z_plastic1_hospital1->hospital2_3
 z_plastic2_hospital1->hospital2_3 z_plastic3_hospital1->hospital2_3
 z_ppe1_hospital1->hospital2_3 z_ppe2_hospital1->hospital2_3
 z_ppe3_hospital1->hospital2_3 z_respirator1_hospital1->hospital2_3
 z_respirator2_hospital1->hospital2_3 z_metal1_hospita2->hospital3_3
 z_metal2_hospita2->hospital3_3 z_plastic1_hospita2->hospital3_3
 z_plastic2_hospita2->hospital3_3 z_plastic3_hospita2->hospital3_3
 z_ppe1_hospita2->hospital3_3 z_ppe2_hospita2->hospital3_3
 z_ppe3_hospita2->hospital3_3 z_respirator1_hospita2->hospital3_3
 z_respirator2_hospita2->hospital3_3 z_metal1_DUMMY_RESERVE->factory1_3
 z_metal2_DUMMY_RESERVE->factory1_3 z_plastic1_DUMMY_RESERVE->factory1_3
 z_plastic2_DUMMY_RESERVE->factory1_3 z_plastic3_DUMMY_RESERVE->factory1_3
 z_ppe1_DUMMY_RESERVE->factory1_3 z_ppe2_DUMMY_RESERVE->factory1_3
 z_ppe3_DUMMY_RESERVE->factory1_3 z_respirator1_DUMMY_RESERVE->factory1_3
 z_respirator2_DUMMY_RESERVE->factory1_3 z_metal1_DUMMY_RESERVE->factory2_3
 z_metal2_DUMMY_RESERVE->factory2_3 z_plastic1_DUMMY_RESERVE->factory2_3
 z_plastic2_DUMMY_RESERVE->factory2_3 z_plastic3_DUMMY_RESERVE->factory2_3
 z_ppe1_DUMMY_RESERVE->factory2_3 z_ppe2_DUMMY_RESERVE->factory2_3
 z_ppe3_DUMMY_RESERVE->factory2_3 z_respirator1_DUMMY_RESERVE->factory2_3
 z_respirator2_DUMMY_RESERVE->factory2_3 z_metal1_DUMMY_RESERVE->factory3_3
 z_metal2_DUMMY_RESERVE->factory3_3 z_plastic1_DUMMY_RESERVE->factory3_3
 z_plastic2_DUMMY_RESERVE->factory3_3 z_plastic3_DUMMY_RESERVE->factory3_3
 z_ppe1_DUMMY_RESERVE->factory3_3 z_ppe2_DUMMY_RESERVE->factory3_3
 z_ppe3_DUMMY_RESERVE->factory3_3 z_respirator1_DUMMY_RESERVE->factory3_3
 z_respirator2_DUMMY_RESERVE->factory3_3 z_metal1_DUMMY_RESERVE->factory4_3
 z_metal2_DUMMY_RESERVE->factory4_3 z_plastic1_DUMMY_RESERVE->factory4_3
 z_plastic2_DUMMY_RESERVE->factory4_3 z_plastic3_DUMMY_RESERVE->factory4_3
 z_ppe1_DUMMY_RESERVE->factory4_3 z_ppe2_DUMMY_RESERVE->factory4_3
 z_ppe3_DUMMY_RESERVE->factory4_3 z_respirator1_DUMMY_RESERVE->factory4_3
 z_respirator2_DUMMY_RESERVE->factory4_3
 z_metal1_DUMMY_RESERVE->hospital1_3 z_metal2_DUMMY_RESERVE->hospital1_3
 z_plastic1_DUMMY_RESERVE->hospital1_3
 z_plastic2_DUMMY_RESERVE->hospital1_3
 z_plastic3_DUMMY_RESERVE->hospital1_3 z_ppe1_DUMMY_RESERVE->hospital1_3
 z_ppe2_DUMMY_RESERVE->hospital1_3 z_ppe3_DUMMY_RESERVE->hospital1_3
 z_respirator1_DUMMY_RESERVE->hospital1_3
 z_respirator2_DUMMY_RESERVE->hospital1_3
 z_metal1_DUMMY_RESERVE->hospital2_3 z_metal2_DUMMY_RESERVE->hospital2_3
 z_plastic1_DUMMY_RESERVE->hospital2_3
 z_plastic2_DUMMY_RESERVE->hospital2_3
 z_plastic3_DUMMY_RESERVE->hospital2_3 z_ppe1_DUMMY_RESERVE->hospital2_3
 z_ppe2_DUMMY_RESERVE->hospital2_3 z_ppe3_DUMMY_RESERVE->hospital2_3
 z_respirator1_DUMMY_RESERVE->hospital2_3
 z_respirator2_DUMMY_RESERVE->hospital2_3
 z_metal1_DUMMY_RESERVE->hospital3_3 z_metal2_DUMMY_RESERVE->hospital3_3
 z_plastic1_DUMMY_RESERVE->hospital3_3
 z_plastic2_DUMMY_RESERVE->hospital3_3
 z_plastic3_DUMMY_RESERVE->hospital3_3 z_ppe1_DUMMY_RESERVE->hospital3_3
 z_ppe2_DUMMY_RESERVE->hospital3_3 z_ppe3_DUMMY_RESERVE->hospital3_3
 z_respirator1_DUMMY_RESERVE->hospital3_3
 z_respirator2_DUMMY_RESERVE->hospital3_3
 z_metal1_DUMMY_RESERVE->hospital4_3 z_metal2_DUMMY_RESERVE->hospital4_3
 z_plastic1_DUMMY_RESERVE->hospital4_3
 z_plastic2_DUMMY_RESERVE->hospital4_3
 z_plastic3_DUMMY_RESERVE->hospital4_3 z_ppe1_DUMMY_RESERVE->hospital4_3
 z_ppe2_DUMMY_RESERVE->hospital4_3 z_ppe3_DUMMY_RESERVE->hospital4_3
 z_respirator1_DUMMY_RESERVE->hospital4_3
 z_respirator2_DUMMY_RESERVE->hospital4_3 z_metal1_factory1->hospital1_4
 z_metal2_factory1->hospital1_4 z_plastic1_factory1->hospital1_4
 z_plastic2_factory1->hospital1_4 z_plastic3_factory1->hospital1_4
 z_ppe1_factory1->hospital1_4 z_ppe2_factory1->hospital1_4
 z_ppe3_factory1->hospital1_4 z_respirator1_factory1->hospital1_4
 z_respirator2_factory1->hospital1_4 z_metal1_factory1->hospital2_4
 z_metal2_factory1->hospital2_4 z_plastic1_factory1->hospital2_4
 z_plastic2_factory1->hospital2_4 z_plastic3_factory1->hospital2_4
 z_ppe1_factory1->hospital2_4 z_ppe2_factory1->hospital2_4
 z_ppe3_factory1->hospital2_4 z_respirator1_factory1->hospital2_4
 z_respirator2_factory1->hospital2_4 z_metal1_factory2->hospital3_4
 z_metal2_factory2->hospital3_4 z_plastic1_factory2->hospital3_4
 z_plastic2_factory2->hospital3_4 z_plastic3_factory2->hospital3_4
 z_ppe1_factory2->hospital3_4 z_ppe2_factory2->hospital3_4
 z_ppe3_factory2->hospital3_4 z_respirator1_factory2->hospital3_4
 z_respirator2_factory2->hospital3_4 z_metal1_factory2->hospital4_4
 z_metal2_factory2->hospital4_4 z_plastic1_factory2->hospital4_4
 z_plastic2_factory2->hospital4_4 z_plastic3_factory2->hospital4_4
 z_ppe1_factory2->hospital4_4 z_ppe2_factory2->hospital4_4
 z_ppe3_factory2->hospital4_4 z_respirator1_factory2->hospital4_4
 z_respirator2_factory2->hospital4_4 z_metal1_factory3->hospital1_4
 z_metal2_factory3->hospital1_4 z_plastic1_factory3->hospital1_4
 z_plastic2_factory3->hospital1_4 z_plastic3_factory3->hospital1_4
 z_ppe1_factory3->hospital1_4 z_ppe2_factory3->hospital1_4
 z_ppe3_factory3->hospital1_4 z_respirator1_factory3->hospital1_4
 z_respirator2_factory3->hospital1_4 z_metal1_factory3->hospital2_4
 z_metal2_factory3->hospital2_4 z_plastic1_factory3->hospital2_4
 z_plastic2_factory3->hospital2_4 z_plastic3_factory3->hospital2_4
 z_ppe1_factory3->hospital2_4 z_ppe2_factory3->hospital2_4
 z_ppe3_factory3->hospital2_4 z_respirator1_factory3->hospital2_4
 z_respirator2_factory3->hospital2_4 z_metal1_factory4->hospital3_4
 z_metal2_factory4->hospital3_4 z_plastic1_factory4->hospital3_4
 z_plastic2_factory4->hospital3_4 z_plastic3_factory4->hospital3_4
 z_ppe1_factory4->hospital3_4 z_ppe2_factory4->hospital3_4
 z_ppe3_factory4->hospital3_4 z_respirator1_factory4->hospital3_4
 z_respirator2_factory4->hospital3_4 z_metal1_factory4->hospital4_4
 z_metal2_factory4->hospital4_4 z_plastic1_factory4->hospital4_4
 z_plastic2_factory4->hospital4_4 z_plastic3_factory4->hospital4_4
 z_ppe1_factory4->hospital4_4 z_ppe2_factory4->hospital4_4
 z_ppe3_factory4->hospital4_4 z_respirator1_factory4->hospital4_4
 z_respirator2_factory4->hospital4_4 z_metal1_factory1->factory4_4
 z_metal2_factory1->factory4_4 z_plastic1_factory1->factory4_4
 z_plastic2_factory1->factory4_4 z_plastic3_factory1->factory4_4
 z_ppe1_factory1->factory4_4 z_ppe2_factory1->factory4_4
 z_ppe3_factory1->factory4_4 z_respirator1_factory1->factory4_4
 z_respirator2_factory1->factory4_4 z_metal1_factory1->factory2_4
 z_metal2_factory1->factory2_4 z_plastic1_factory1->factory2_4
 z_plastic2_factory1->factory2_4 z_plastic3_factory1->factory2_4
 z_ppe1_factory1->factory2_4 z_ppe2_factory1->factory2_4
 z_ppe3_factory1->factory2_4 z_respirator1_factory1->factory2_4
 z_respirator2_factory1->factory2_4 z_metal1_factory4->factory2_4
 z_metal2_factory4->factory2_4 z_plastic1_factory4->factory2_4
 z_plastic2_factory4->factory2_4 z_plastic3_factory4->factory2_4
 z_ppe1_factory4->factory2_4 z_ppe2_factory4->factory2_4
 z_ppe3_factory4->factory2_4 z_respirator1_factory4->factory2_4
 z_respirator2_factory4->factory2_4 z_metal1_hospital1->hospital2_4
 z_metal2_hospital1->hospital2_4 z_plastic1_hospital1->hospital2_4
 z_plastic2_hospital1->hospital2_4 z_plastic3_hospital1->hospital2_4
 z_ppe1_hospital1->hospital2_4 z_ppe2_hospital1->hospital2_4
 z_ppe3_hospital1->hospital2_4 z_respirator1_hospital1->hospital2_4
 z_respirator2_hospital1->hospital2_4 z_metal1_hospita2->hospital3_4
 z_metal2_hospita2->hospital3_4 z_plastic1_hospita2->hospital3_4
 z_plastic2_hospita2->hospital3_4 z_plastic3_hospita2->hospital3_4
 z_ppe1_hospita2->hospital3_4 z_ppe2_hospita2->hospital3_4
 z_ppe3_hospita2->hospital3_4 z_respirator1_hospita2->hospital3_4
 z_respirator2_hospita2->hospital3_4 z_metal1_DUMMY_RESERVE->factory1_4
 z_metal2_DUMMY_RESERVE->factory1_4 z_plastic1_DUMMY_RESERVE->factory1_4
 z_plastic2_DUMMY_RESERVE->factory1_4 z_plastic3_DUMMY_RESERVE->factory1_4
 z_ppe1_DUMMY_RESERVE->factory1_4 z_ppe2_DUMMY_RESERVE->factory1_4
 z_ppe3_DUMMY_RESERVE->factory1_4 z_respirator1_DUMMY_RESERVE->factory1_4
 z_respirator2_DUMMY_RESERVE->factory1_4 z_metal1_DUMMY_RESERVE->factory2_4
 z_metal2_DUMMY_RESERVE->factory2_4 z_plastic1_DUMMY_RESERVE->factory2_4
 z_plastic2_DUMMY_RESERVE->factory2_4 z_plastic3_DUMMY_RESERVE->factory2_4
 z_ppe1_DUMMY_RESERVE->factory2_4 z_ppe2_DUMMY_RESERVE->factory2_4
 z_ppe3_DUMMY_RESERVE->factory2_4 z_respirator1_DUMMY_RESERVE->factory2_4
 z_respirator2_DUMMY_RESERVE->factory2_4 z_metal1_DUMMY_RESERVE->factory3_4
 z_metal2_DUMMY_RESERVE->factory3_4 z_plastic1_DUMMY_RESERVE->factory3_4
 z_plastic2_DUMMY_RESERVE->factory3_4 z_plastic3_DUMMY_RESERVE->factory3_4
 z_ppe1_DUMMY_RESERVE->factory3_4 z_ppe2_DUMMY_RESERVE->factory3_4
 z_ppe3_DUMMY_RESERVE->factory3_4 z_respirator1_DUMMY_RESERVE->factory3_4
 z_respirator2_DUMMY_RESERVE->factory3_4 z_metal1_DUMMY_RESERVE->factory4_4
 z_metal2_DUMMY_RESERVE->factory4_4 z_plastic1_DUMMY_RESERVE->factory4_4
 z_plastic2_DUMMY_RESERVE->factory4_4 z_plastic3_DUMMY_RESERVE->factory4_4
 z_ppe1_DUMMY_RESERVE->factory4_4 z_ppe2_DUMMY_RESERVE->factory4_4
 z_ppe3_DUMMY_RESERVE->factory4_4 z_respirator1_DUMMY_RESERVE->factory4_4
 z_respirator2_DUMMY_RESERVE->factory4_4
 z_metal1_DUMMY_RESERVE->hospital1_4 z_metal2_DUMMY_RESERVE->hospital1_4
 z_plastic1_DUMMY_RESERVE->hospital1_4
 z_plastic2_DUMMY_RESERVE->hospital1_4
 z_plastic3_DUMMY_RESERVE->hospital1_4 z_ppe1_DUMMY_RESERVE->hospital1_4
 z_ppe2_DUMMY_RESERVE->hospital1_4 z_ppe3_DUMMY_RESERVE->hospital1_4
 z_respirator1_DUMMY_RESERVE->hospital1_4
 z_respirator2_DUMMY_RESERVE->hospital1_4
 z_metal1_DUMMY_RESERVE->hospital2_4 z_metal2_DUMMY_RESERVE->hospital2_4
 z_plastic1_DUMMY_RESERVE->hospital2_4
 z_plastic2_DUMMY_RESERVE->hospital2_4
 z_plastic3_DUMMY_RESERVE->hospital2_4 z_ppe1_DUMMY_RESERVE->hospital2_4
 z_ppe2_DUMMY_RESERVE->hospital2_4 z_ppe3_DUMMY_RESERVE->hospital2_4
 z_respirator1_DUMMY_RESERVE->hospital2_4
 z_respirator2_DUMMY_RESERVE->hospital2_4
 z_metal1_DUMMY_RESERVE->hospital3_4 z_metal2_DUMMY_RESERVE->hospital3_4
 z_plastic1_DUMMY_RESERVE->hospital3_4
 z_plastic2_DUMMY_RESERVE->hospital3_4
 z_plastic3_DUMMY_RESERVE->hospital3_4 z_ppe1_DUMMY_RESERVE->hospital3_4
 z_ppe2_DUMMY_RESERVE->hospital3_4 z_ppe3_DUMMY_RESERVE->hospital3_4
 z_respirator1_DUMMY_RESERVE->hospital3_4
 z_respirator2_DUMMY_RESERVE->hospital3_4
 z_metal1_DUMMY_RESERVE->hospital4_4 z_metal2_DUMMY_RESERVE->hospital4_4
 z_plastic1_DUMMY_RESERVE->hospital4_4
 z_plastic2_DUMMY_RESERVE->hospital4_4
 z_plastic3_DUMMY_RESERVE->hospital4_4 z_ppe1_DUMMY_RESERVE->hospital4_4
 z_ppe2_DUMMY_RESERVE->hospital4_4 z_ppe3_DUMMY_RESERVE->hospital4_4
 z_respirator1_DUMMY_RESERVE->hospital4_4
 z_respirator2_DUMMY_RESERVE->hospital4_4 z_metal1_factory1->hospital1_5
 z_metal2_factory1->hospital1_5 z_plastic1_factory1->hospital1_5
 z_plastic2_factory1->hospital1_5 z_plastic3_factory1->hospital1_5
 z_ppe1_factory1->hospital1_5 z_ppe2_factory1->hospital1_5
 z_ppe3_factory1->hospital1_5 z_respirator1_factory1->hospital1_5
 z_respirator2_factory1->hospital1_5 z_metal1_factory1->hospital2_5
 z_metal2_factory1->hospital2_5 z_plastic1_factory1->hospital2_5
 z_plastic2_factory1->hospital2_5 z_plastic3_factory1->hospital2_5
 z_ppe1_factory1->hospital2_5 z_ppe2_factory1->hospital2_5
 z_ppe3_factory1->hospital2_5 z_respirator1_factory1->hospital2_5
 z_respirator2_factory1->hospital2_5 z_metal1_factory2->hospital3_5
 z_metal2_factory2->hospital3_5 z_plastic1_factory2->hospital3_5
 z_plastic2_factory2->hospital3_5 z_plastic3_factory2->hospital3_5
 z_ppe1_factory2->hospital3_5 z_ppe2_factory2->hospital3_5
 z_ppe3_factory2->hospital3_5 z_respirator1_factory2->hospital3_5
 z_respirator2_factory2->hospital3_5 z_metal1_factory2->hospital4_5
 z_metal2_factory2->hospital4_5 z_plastic1_factory2->hospital4_5
 z_plastic2_factory2->hospital4_5 z_plastic3_factory2->hospital4_5
 z_ppe1_factory2->hospital4_5 z_ppe2_factory2->hospital4_5
 z_ppe3_factory2->hospital4_5 z_respirator1_factory2->hospital4_5
 z_respirator2_factory2->hospital4_5 z_metal1_factory3->hospital1_5
 z_metal2_factory3->hospital1_5 z_plastic1_factory3->hospital1_5
 z_plastic2_factory3->hospital1_5 z_plastic3_factory3->hospital1_5
 z_ppe1_factory3->hospital1_5 z_ppe2_factory3->hospital1_5
 z_ppe3_factory3->hospital1_5 z_respirator1_factory3->hospital1_5
 z_respirator2_factory3->hospital1_5 z_metal1_factory3->hospital2_5
 z_metal2_factory3->hospital2_5 z_plastic1_factory3->hospital2_5
 z_plastic2_factory3->hospital2_5 z_plastic3_factory3->hospital2_5
 z_ppe1_factory3->hospital2_5 z_ppe2_factory3->hospital2_5
 z_ppe3_factory3->hospital2_5 z_respirator1_factory3->hospital2_5
 z_respirator2_factory3->hospital2_5 z_metal1_factory4->hospital3_5
 z_metal2_factory4->hospital3_5 z_plastic1_factory4->hospital3_5
 z_plastic2_factory4->hospital3_5 z_plastic3_factory4->hospital3_5
 z_ppe1_factory4->hospital3_5 z_ppe2_factory4->hospital3_5
 z_ppe3_factory4->hospital3_5 z_respirator1_factory4->hospital3_5
 z_respirator2_factory4->hospital3_5 z_metal1_factory4->hospital4_5
 z_metal2_factory4->hospital4_5 z_plastic1_factory4->hospital4_5
 z_plastic2_factory4->hospital4_5 z_plastic3_factory4->hospital4_5
 z_ppe1_factory4->hospital4_5 z_ppe2_factory4->hospital4_5
 z_ppe3_factory4->hospital4_5 z_respirator1_factory4->hospital4_5
 z_respirator2_factory4->hospital4_5 z_metal1_factory1->factory4_5
 z_metal2_factory1->factory4_5 z_plastic1_factory1->factory4_5
 z_plastic2_factory1->factory4_5 z_plastic3_factory1->factory4_5
 z_ppe1_factory1->factory4_5 z_ppe2_factory1->factory4_5
 z_ppe3_factory1->factory4_5 z_respirator1_factory1->factory4_5
 z_respirator2_factory1->factory4_5 z_metal1_factory1->factory2_5
 z_metal2_factory1->factory2_5 z_plastic1_factory1->factory2_5
 z_plastic2_factory1->factory2_5 z_plastic3_factory1->factory2_5
 z_ppe1_factory1->factory2_5 z_ppe2_factory1->factory2_5
 z_ppe3_factory1->factory2_5 z_respirator1_factory1->factory2_5
 z_respirator2_factory1->factory2_5 z_metal1_factory4->factory2_5
 z_metal2_factory4->factory2_5 z_plastic1_factory4->factory2_5
 z_plastic2_factory4->factory2_5 z_plastic3_factory4->factory2_5
 z_ppe1_factory4->factory2_5 z_ppe2_factory4->factory2_5
 z_ppe3_factory4->factory2_5 z_respirator1_factory4->factory2_5
 z_respirator2_factory4->factory2_5 z_metal1_hospital1->hospital2_5
 z_metal2_hospital1->hospital2_5 z_plastic1_hospital1->hospital2_5
 z_plastic2_hospital1->hospital2_5 z_plastic3_hospital1->hospital2_5
 z_ppe1_hospital1->hospital2_5 z_ppe2_hospital1->hospital2_5
 z_ppe3_hospital1->hospital2_5 z_respirator1_hospital1->hospital2_5
 z_respirator2_hospital1->hospital2_5 z_metal1_hospita2->hospital3_5
 z_metal2_hospita2->hospital3_5 z_plastic1_hospita2->hospital3_5
 z_plastic2_hospita2->hospital3_5 z_plastic3_hospita2->hospital3_5
 z_ppe1_hospita2->hospital3_5 z_ppe2_hospita2->hospital3_5
 z_ppe3_hospita2->hospital3_5 z_respirator1_hospita2->hospital3_5
 z_respirator2_hospita2->hospital3_5 z_metal1_DUMMY_RESERVE->factory1_5
 z_metal2_DUMMY_RESERVE->factory1_5 z_plastic1_DUMMY_RESERVE->factory1_5
 z_plastic2_DUMMY_RESERVE->factory1_5 z_plastic3_DUMMY_RESERVE->factory1_5
 z_ppe1_DUMMY_RESERVE->factory1_5 z_ppe2_DUMMY_RESERVE->factory1_5
 z_ppe3_DUMMY_RESERVE->factory1_5 z_respirator1_DUMMY_RESERVE->factory1_5
 z_respirator2_DUMMY_RESERVE->factory1_5 z_metal1_DUMMY_RESERVE->factory2_5
 z_metal2_DUMMY_RESERVE->factory2_5 z_plastic1_DUMMY_RESERVE->factory2_5
 z_plastic2_DUMMY_RESERVE->factory2_5 z_plastic3_DUMMY_RESERVE->factory2_5
 z_ppe1_DUMMY_RESERVE->factory2_5 z_ppe2_DUMMY_RESERVE->factory2_5
 z_ppe3_DUMMY_RESERVE->factory2_5 z_respirator1_DUMMY_RESERVE->factory2_5
 z_respirator2_DUMMY_RESERVE->factory2_5 z_metal1_DUMMY_RESERVE->factory3_5
 z_metal2_DUMMY_RESERVE->factory3_5 z_plastic1_DUMMY_RESERVE->factory3_5
 z_plastic2_DUMMY_RESERVE->factory3_5 z_plastic3_DUMMY_RESERVE->factory3_5
 z_ppe1_DUMMY_RESERVE->factory3_5 z_ppe2_DUMMY_RESERVE->factory3_5
 z_ppe3_DUMMY_RESERVE->factory3_5 z_respirator1_DUMMY_RESERVE->factory3_5
 z_respirator2_DUMMY_RESERVE->factory3_5 z_metal1_DUMMY_RESERVE->factory4_5
 z_metal2_DUMMY_RESERVE->factory4_5 z_plastic1_DUMMY_RESERVE->factory4_5
 z_plastic2_DUMMY_RESERVE->factory4_5 z_plastic3_DUMMY_RESERVE->factory4_5
 z_ppe1_DUMMY_RESERVE->factory4_5 z_ppe2_DUMMY_RESERVE->factory4_5
 z_ppe3_DUMMY_RESERVE->factory4_5 z_respirator1_DUMMY_RESERVE->factory4_5
 z_respirator2_DUMMY_RESERVE->factory4_5
 z_metal1_DUMMY_RESERVE->hospital1_5 z_metal2_DUMMY_RESERVE->hospital1_5
 z_plastic1_DUMMY_RESERVE->hospital1_5
 z_plastic2_DUMMY_RESERVE->hospital1_5
 z_plastic3_DUMMY_RESERVE->hospital1_5 z_ppe1_DUMMY_RESERVE->hospital1_5
 z_ppe2_DUMMY_RESERVE->hospital1_5 z_ppe3_DUMMY_RESERVE->hospital1_5
 z_respirator1_DUMMY_RESERVE->hospital1_5
 z_respirator2_DUMMY_RESERVE->hospital1_5
 z_metal1_DUMMY_RESERVE->hospital2_5 z_metal2_DUMMY_RESERVE->hospital2_5
 z_plastic1_DUMMY_RESERVE->hospital2_5
 z_plastic2_DUMMY_RESERVE->hospital2_5
 z_plastic3_DUMMY_RESERVE->hospital2_5 z_ppe1_DUMMY_RESERVE->hospital2_5
 z_ppe2_DUMMY_RESERVE->hospital2_5 z_ppe3_DUMMY_RESERVE->hospital2_5
 z_respirator1_DUMMY_RESERVE->hospital2_5
 z_respirator2_DUMMY_RESERVE->hospital2_5
 z_metal1_DUMMY_RESERVE->hospital3_5 z_metal2_DUMMY_RESERVE->hospital3_5
 z_plastic1_DUMMY_RESERVE->hospital3_5
 z_plastic2_DUMMY_RESERVE->hospital3_5
 z_plastic3_DUMMY_RESERVE->hospital3_5 z_ppe1_DUMMY_RESERVE->hospital3_5
 z_ppe2_DUMMY_RESERVE->hospital3_5 z_ppe3_DUMMY_RESERVE->hospital3_5
 z_respirator1_DUMMY_RESERVE->hospital3_5
 z_respirator2_DUMMY_RESERVE->hospital3_5
 z_metal1_DUMMY_RESERVE->hospital4_5 z_metal2_DUMMY_RESERVE->hospital4_5
 z_plastic1_DUMMY_RESERVE->hospital4_5
 z_plastic2_DUMMY_RESERVE->hospital4_5
 z_plastic3_DUMMY_RESERVE->hospital4_5 z_ppe1_DUMMY_RESERVE->hospital4_5
 z_ppe2_DUMMY_RESERVE->hospital4_5 z_ppe3_DUMMY_RESERVE->hospital4_5
 z_respirator1_DUMMY_RESERVE->hospital4_5
 z_respirator2_DUMMY_RESERVE->hospital4_5 z_metal1_factory1->hospital1_6
 z_metal2_factory1->hospital1_6 z_plastic1_factory1->hospital1_6
 z_plastic2_factory1->hospital1_6 z_plastic3_factory1->hospital1_6
 z_ppe1_factory1->hospital1_6 z_ppe2_factory1->hospital1_6
 z_ppe3_factory1->hospital1_6 z_respirator1_factory1->hospital1_6
 z_respirator2_factory1->hospital1_6 z_metal1_factory1->hospital2_6
 z_metal2_factory1->hospital2_6 z_plastic1_factory1->hospital2_6
 z_plastic2_factory1->hospital2_6 z_plastic3_factory1->hospital2_6
 z_ppe1_factory1->hospital2_6 z_ppe2_factory1->hospital2_6
 z_ppe3_factory1->hospital2_6 z_respirator1_factory1->hospital2_6
 z_respirator2_factory1->hospital2_6 z_metal1_factory2->hospital3_6
 z_metal2_factory2->hospital3_6 z_plastic1_factory2->hospital3_6
 z_plastic2_factory2->hospital3_6 z_plastic3_factory2->hospital3_6
 z_ppe1_factory2->hospital3_6 z_ppe2_factory2->hospital3_6
 z_ppe3_factory2->hospital3_6 z_respirator1_factory2->hospital3_6
 z_respirator2_factory2->hospital3_6 z_metal1_factory2->hospital4_6
 z_metal2_factory2->hospital4_6 z_plastic1_factory2->hospital4_6
 z_plastic2_factory2->hospital4_6 z_plastic3_factory2->hospital4_6
 z_ppe1_factory2->hospital4_6 z_ppe2_factory2->hospital4_6
 z_ppe3_factory2->hospital4_6 z_respirator1_factory2->hospital4_6
 z_respirator2_factory2->hospital4_6 z_metal1_factory3->hospital1_6
 z_metal2_factory3->hospital1_6 z_plastic1_factory3->hospital1_6
 z_plastic2_factory3->hospital1_6 z_plastic3_factory3->hospital1_6
 z_ppe1_factory3->hospital1_6 z_ppe2_factory3->hospital1_6
 z_ppe3_factory3->hospital1_6 z_respirator1_factory3->hospital1_6
 z_respirator2_factory3->hospital1_6 z_metal1_factory3->hospital2_6
 z_metal2_factory3->hospital2_6 z_plastic1_factory3->hospital2_6
 z_plastic2_factory3->hospital2_6 z_plastic3_factory3->hospital2_6
 z_ppe1_factory3->hospital2_6 z_ppe2_factory3->hospital2_6
 z_ppe3_factory3->hospital2_6 z_respirator1_factory3->hospital2_6
 z_respirator2_factory3->hospital2_6 z_metal1_factory4->hospital3_6
 z_metal2_factory4->hospital3_6 z_plastic1_factory4->hospital3_6
 z_plastic2_factory4->hospital3_6 z_plastic3_factory4->hospital3_6
 z_ppe1_factory4->hospital3_6 z_ppe2_factory4->hospital3_6
 z_ppe3_factory4->hospital3_6 z_respirator1_factory4->hospital3_6
 z_respirator2_factory4->hospital3_6 z_metal1_factory4->hospital4_6
 z_metal2_factory4->hospital4_6 z_plastic1_factory4->hospital4_6
 z_plastic2_factory4->hospital4_6 z_plastic3_factory4->hospital4_6
 z_ppe1_factory4->hospital4_6 z_ppe2_factory4->hospital4_6
 z_ppe3_factory4->hospital4_6 z_respirator1_factory4->hospital4_6
 z_respirator2_factory4->hospital4_6 z_metal1_factory1->factory4_6
 z_metal2_factory1->factory4_6 z_plastic1_factory1->factory4_6
 z_plastic2_factory1->factory4_6 z_plastic3_factory1->factory4_6
 z_ppe1_factory1->factory4_6 z_ppe2_factory1->factory4_6
 z_ppe3_factory1->factory4_6 z_respirator1_factory1->factory4_6
 z_respirator2_factory1->factory4_6 z_metal1_factory1->factory2_6
 z_metal2_factory1->factory2_6 z_plastic1_factory1->factory2_6
 z_plastic2_factory1->factory2_6 z_plastic3_factory1->factory2_6
 z_ppe1_factory1->factory2_6 z_ppe2_factory1->factory2_6
 z_ppe3_factory1->factory2_6 z_respirator1_factory1->factory2_6
 z_respirator2_factory1->factory2_6 z_metal1_factory4->factory2_6
 z_metal2_factory4->factory2_6 z_plastic1_factory4->factory2_6
 z_plastic2_factory4->factory2_6 z_plastic3_factory4->factory2_6
 z_ppe1_factory4->factory2_6 z_ppe2_factory4->factory2_6
 z_ppe3_factory4->factory2_6 z_respirator1_factory4->factory2_6
 z_respirator2_factory4->factory2_6 z_metal1_hospital1->hospital2_6
 z_metal2_hospital1->hospital2_6 z_plastic1_hospital1->hospital2_6
 z_plastic2_hospital1->hospital2_6 z_plastic3_hospital1->hospital2_6
 z_ppe1_hospital1->hospital2_6 z_ppe2_hospital1->hospital2_6
 z_ppe3_hospital1->hospital2_6 z_respirator1_hospital1->hospital2_6
 z_respirator2_hospital1->hospital2_6 z_metal1_hospita2->hospital3_6
 z_metal2_hospita2->hospital3_6 z_plastic1_hospita2->hospital3_6
 z_plastic2_hospita2->hospital3_6 z_plastic3_hospita2->hospital3_6
 z_ppe1_hospita2->hospital3_6 z_ppe2_hospita2->hospital3_6
 z_ppe3_hospita2->hospital3_6 z_respirator1_hospita2->hospital3_6
 z_respirator2_hospita2->hospital3_6 z_metal1_DUMMY_RESERVE->factory1_6
 z_metal2_DUMMY_RESERVE->factory1_6 z_plastic1_DUMMY_RESERVE->factory1_6
 z_plastic2_DUMMY_RESERVE->factory1_6 z_plastic3_DUMMY_RESERVE->factory1_6
 z_ppe1_DUMMY_RESERVE->factory1_6 z_ppe2_DUMMY_RESERVE->factory1_6
 z_ppe3_DUMMY_RESERVE->factory1_6 z_respirator1_DUMMY_RESERVE->factory1_6
 z_respirator2_DUMMY_RESERVE->factory1_6 z_metal1_DUMMY_RESERVE->factory2_6
 z_metal2_DUMMY_RESERVE->factory2_6 z_plastic1_DUMMY_RESERVE->factory2_6
 z_plastic2_DUMMY_RESERVE->factory2_6 z_plastic3_DUMMY_RESERVE->factory2_6
 z_ppe1_DUMMY_RESERVE->factory2_6 z_ppe2_DUMMY_RESERVE->factory2_6
 z_ppe3_DUMMY_RESERVE->factory2_6 z_respirator1_DUMMY_RESERVE->factory2_6
 z_respirator2_DUMMY_RESERVE->factory2_6 z_metal1_DUMMY_RESERVE->factory3_6
 z_metal2_DUMMY_RESERVE->factory3_6 z_plastic1_DUMMY_RESERVE->factory3_6
 z_plastic2_DUMMY_RESERVE->factory3_6 z_plastic3_DUMMY_RESERVE->factory3_6
 z_ppe1_DUMMY_RESERVE->factory3_6 z_ppe2_DUMMY_RESERVE->factory3_6
 z_ppe3_DUMMY_RESERVE->factory3_6 z_respirator1_DUMMY_RESERVE->factory3_6
 z_respirator2_DUMMY_RESERVE->factory3_6 z_metal1_DUMMY_RESERVE->factory4_6
 z_metal2_DUMMY_RESERVE->factory4_6 z_plastic1_DUMMY_RESERVE->factory4_6
 z_plastic2_DUMMY_RESERVE->factory4_6 z_plastic3_DUMMY_RESERVE->factory4_6
 z_ppe1_DUMMY_RESERVE->factory4_6 z_ppe2_DUMMY_RESERVE->factory4_6
 z_ppe3_DUMMY_RESERVE->factory4_6 z_respirator1_DUMMY_RESERVE->factory4_6
 z_respirator2_DUMMY_RESERVE->factory4_6
 z_metal1_DUMMY_RESERVE->hospital1_6 z_metal2_DUMMY_RESERVE->hospital1_6
 z_plastic1_DUMMY_RESERVE->hospital1_6
 z_plastic2_DUMMY_RESERVE->hospital1_6
 z_plastic3_DUMMY_RESERVE->hospital1_6 z_ppe1_DUMMY_RESERVE->hospital1_6
 z_ppe2_DUMMY_RESERVE->hospital1_6 z_ppe3_DUMMY_RESERVE->hospital1_6
 z_respirator1_DUMMY_RESERVE->hospital1_6
 z_respirator2_DUMMY_RESERVE->hospital1_6
 z_metal1_DUMMY_RESERVE->hospital2_6 z_metal2_DUMMY_RESERVE->hospital2_6
 z_plastic1_DUMMY_RESERVE->hospital2_6
 z_plastic2_DUMMY_RESERVE->hospital2_6
 z_plastic3_DUMMY_RESERVE->hospital2_6 z_ppe1_DUMMY_RESERVE->hospital2_6
 z_ppe2_DUMMY_RESERVE->hospital2_6 z_ppe3_DUMMY_RESERVE->hospital2_6
 z_respirator1_DUMMY_RESERVE->hospital2_6
 z_respirator2_DUMMY_RESERVE->hospital2_6
 z_metal1_DUMMY_RESERVE->hospital3_6 z_metal2_DUMMY_RESERVE->hospital3_6
 z_plastic1_DUMMY_RESERVE->hospital3_6
 z_plastic2_DUMMY_RESERVE->hospital3_6
 z_plastic3_DUMMY_RESERVE->hospital3_6 z_ppe1_DUMMY_RESERVE->hospital3_6
 z_ppe2_DUMMY_RESERVE->hospital3_6 z_ppe3_DUMMY_RESERVE->hospital3_6
 z_respirator1_DUMMY_RESERVE->hospital3_6
 z_respirator2_DUMMY_RESERVE->hospital3_6
 z_metal1_DUMMY_RESERVE->hospital4_6 z_metal2_DUMMY_RESERVE->hospital4_6
 z_plastic1_DUMMY_RESERVE->hospital4_6
 z_plastic2_DUMMY_RESERVE->hospital4_6
 z_plastic3_DUMMY_RESERVE->hospital4_6 z_ppe1_DUMMY_RESERVE->hospital4_6
 z_ppe2_DUMMY_RESERVE->hospital4_6 z_ppe3_DUMMY_RESERVE->hospital4_6
 z_respirator1_DUMMY_RESERVE->hospital4_6
 z_respirator2_DUMMY_RESERVE->hospital4_6 z_metal1_factory1->hospital1_7
 z_metal2_factory1->hospital1_7 z_plastic1_factory1->hospital1_7
 z_plastic2_factory1->hospital1_7 z_plastic3_factory1->hospital1_7
 z_ppe1_factory1->hospital1_7 z_ppe2_factory1->hospital1_7
 z_ppe3_factory1->hospital1_7 z_respirator1_factory1->hospital1_7
 z_respirator2_factory1->hospital1_7 z_metal1_factory1->hospital2_7
 z_metal2_factory1->hospital2_7 z_plastic1_factory1->hospital2_7
 z_plastic2_factory1->hospital2_7 z_plastic3_factory1->hospital2_7
 z_ppe1_factory1->hospital2_7 z_ppe2_factory1->hospital2_7
 z_ppe3_factory1->hospital2_7 z_respirator1_factory1->hospital2_7
 z_respirator2_factory1->hospital2_7 z_metal1_factory2->hospital3_7
 z_metal2_factory2->hospital3_7 z_plastic1_factory2->hospital3_7
 z_plastic2_factory2->hospital3_7 z_plastic3_factory2->hospital3_7
 z_ppe1_factory2->hospital3_7 z_ppe2_factory2->hospital3_7
 z_ppe3_factory2->hospital3_7 z_respirator1_factory2->hospital3_7
 z_respirator2_factory2->hospital3_7 z_metal1_factory2->hospital4_7
 z_metal2_factory2->hospital4_7 z_plastic1_factory2->hospital4_7
 z_plastic2_factory2->hospital4_7 z_plastic3_factory2->hospital4_7
 z_ppe1_factory2->hospital4_7 z_ppe2_factory2->hospital4_7
 z_ppe3_factory2->hospital4_7 z_respirator1_factory2->hospital4_7
 z_respirator2_factory2->hospital4_7 z_metal1_factory3->hospital1_7
 z_metal2_factory3->hospital1_7 z_plastic1_factory3->hospital1_7
 z_plastic2_factory3->hospital1_7 z_plastic3_factory3->hospital1_7
 z_ppe1_factory3->hospital1_7 z_ppe2_factory3->hospital1_7
 z_ppe3_factory3->hospital1_7 z_respirator1_factory3->hospital1_7
 z_respirator2_factory3->hospital1_7 z_metal1_factory3->hospital2_7
 z_metal2_factory3->hospital2_7 z_plastic1_factory3->hospital2_7
 z_plastic2_factory3->hospital2_7 z_plastic3_factory3->hospital2_7
 z_ppe1_factory3->hospital2_7 z_ppe2_factory3->hospital2_7
 z_ppe3_factory3->hospital2_7 z_respirator1_factory3->hospital2_7
 z_respirator2_factory3->hospital2_7 z_metal1_factory4->hospital3_7
 z_metal2_factory4->hospital3_7 z_plastic1_factory4->hospital3_7
 z_plastic2_factory4->hospital3_7 z_plastic3_factory4->hospital3_7
 z_ppe1_factory4->hospital3_7 z_ppe2_factory4->hospital3_7
 z_ppe3_factory4->hospital3_7 z_respirator1_factory4->hospital3_7
 z_respirator2_factory4->hospital3_7 z_metal1_factory4->hospital4_7
 z_metal2_factory4->hospital4_7 z_plastic1_factory4->hospital4_7
 z_plastic2_factory4->hospital4_7 z_plastic3_factory4->hospital4_7
 z_ppe1_factory4->hospital4_7 z_ppe2_factory4->hospital4_7
 z_ppe3_factory4->hospital4_7 z_respirator1_factory4->hospital4_7
 z_respirator2_factory4->hospital4_7 z_metal1_factory1->factory4_7
 z_metal2_factory1->factory4_7 z_plastic1_factory1->factory4_7
 z_plastic2_factory1->factory4_7 z_plastic3_factory1->factory4_7
 z_ppe1_factory1->factory4_7 z_ppe2_factory1->factory4_7
 z_ppe3_factory1->factory4_7 z_respirator1_factory1->factory4_7
 z_respirator2_factory1->factory4_7 z_metal1_factory1->factory2_7
 z_metal2_factory1->factory2_7 z_plastic1_factory1->factory2_7
 z_plastic2_factory1->factory2_7 z_plastic3_factory1->factory2_7
 z_ppe1_factory1->factory2_7 z_ppe2_factory1->factory2_7
 z_ppe3_factory1->factory2_7 z_respirator1_factory1->factory2_7
 z_respirator2_factory1->factory2_7 z_metal1_factory4->factory2_7
 z_metal2_factory4->factory2_7 z_plastic1_factory4->factory2_7
 z_plastic2_factory4->factory2_7 z_plastic3_factory4->factory2_7
 z_ppe1_factory4->factory2_7 z_ppe2_factory4->factory2_7
 z_ppe3_factory4->factory2_7 z_respirator1_factory4->factory2_7
 z_respirator2_factory4->factory2_7 z_metal1_hospital1->hospital2_7
 z_metal2_hospital1->hospital2_7 z_plastic1_hospital1->hospital2_7
 z_plastic2_hospital1->hospital2_7 z_plastic3_hospital1->hospital2_7
 z_ppe1_hospital1->hospital2_7 z_ppe2_hospital1->hospital2_7
 z_ppe3_hospital1->hospital2_7 z_respirator1_hospital1->hospital2_7
 z_respirator2_hospital1->hospital2_7 z_metal1_hospita2->hospital3_7
 z_metal2_hospita2->hospital3_7 z_plastic1_hospita2->hospital3_7
 z_plastic2_hospita2->hospital3_7 z_plastic3_hospita2->hospital3_7
 z_ppe1_hospita2->hospital3_7 z_ppe2_hospita2->hospital3_7
 z_ppe3_hospita2->hospital3_7 z_respirator1_hospita2->hospital3_7
 z_respirator2_hospita2->hospital3_7 z_metal1_DUMMY_RESERVE->factory1_7
 z_metal2_DUMMY_RESERVE->factory1_7 z_plastic1_DUMMY_RESERVE->factory1_7
 z_plastic2_DUMMY_RESERVE->factory1_7 z_plastic3_DUMMY_RESERVE->factory1_7
 z_ppe1_DUMMY_RESERVE->factory1_7 z_ppe2_DUMMY_RESERVE->factory1_7
 z_ppe3_DUMMY_RESERVE->factory1_7 z_respirator1_DUMMY_RESERVE->factory1_7
 z_respirator2_DUMMY_RESERVE->factory1_7 z_metal1_DUMMY_RESERVE->factory2_7
 z_metal2_DUMMY_RESERVE->factory2_7 z_plastic1_DUMMY_RESERVE->factory2_7
 z_plastic2_DUMMY_RESERVE->factory2_7 z_plastic3_DUMMY_RESERVE->factory2_7
 z_ppe1_DUMMY_RESERVE->factory2_7 z_ppe2_DUMMY_RESERVE->factory2_7
 z_ppe3_DUMMY_RESERVE->factory2_7 z_respirator1_DUMMY_RESERVE->factory2_7
 z_respirator2_DUMMY_RESERVE->factory2_7 z_metal1_DUMMY_RESERVE->factory3_7
 z_metal2_DUMMY_RESERVE->factory3_7 z_plastic1_DUMMY_RESERVE->factory3_7
 z_plastic2_DUMMY_RESERVE->factory3_7 z_plastic3_DUMMY_RESERVE->factory3_7
 z_ppe1_DUMMY_RESERVE->factory3_7 z_ppe2_DUMMY_RESERVE->factory3_7
 z_ppe3_DUMMY_RESERVE->factory3_7 z_respirator1_DUMMY_RESERVE->factory3_7
 z_respirator2_DUMMY_RESERVE->factory3_7 z_metal1_DUMMY_RESERVE->factory4_7
 z_metal2_DUMMY_RESERVE->factory4_7 z_plastic1_DUMMY_RESERVE->factory4_7
 z_plastic2_DUMMY_RESERVE->factory4_7 z_plastic3_DUMMY_RESERVE->factory4_7
 z_ppe1_DUMMY_RESERVE->factory4_7 z_ppe2_DUMMY_RESERVE->factory4_7
 z_ppe3_DUMMY_RESERVE->factory4_7 z_respirator1_DUMMY_RESERVE->factory4_7
 z_respirator2_DUMMY_RESERVE->factory4_7
 z_metal1_DUMMY_RESERVE->hospital1_7 z_metal2_DUMMY_RESERVE->hospital1_7
 z_plastic1_DUMMY_RESERVE->hospital1_7
 z_plastic2_DUMMY_RESERVE->hospital1_7
 z_plastic3_DUMMY_RESERVE->hospital1_7 z_ppe1_DUMMY_RESERVE->hospital1_7
 z_ppe2_DUMMY_RESERVE->hospital1_7 z_ppe3_DUMMY_RESERVE->hospital1_7
 z_respirator1_DUMMY_RESERVE->hospital1_7
 z_respirator2_DUMMY_RESERVE->hospital1_7
 z_metal1_DUMMY_RESERVE->hospital2_7 z_metal2_DUMMY_RESERVE->hospital2_7
 z_plastic1_DUMMY_RESERVE->hospital2_7
 z_plastic2_DUMMY_RESERVE->hospital2_7
 z_plastic3_DUMMY_RESERVE->hospital2_7 z_ppe1_DUMMY_RESERVE->hospital2_7
 z_ppe2_DUMMY_RESERVE->hospital2_7 z_ppe3_DUMMY_RESERVE->hospital2_7
 z_respirator1_DUMMY_RESERVE->hospital2_7
 z_respirator2_DUMMY_RESERVE->hospital2_7
 z_metal1_DUMMY_RESERVE->hospital3_7 z_metal2_DUMMY_RESERVE->hospital3_7
 z_plastic1_DUMMY_RESERVE->hospital3_7
 z_plastic2_DUMMY_RESERVE->hospital3_7
 z_plastic3_DUMMY_RESERVE->hospital3_7 z_ppe1_DUMMY_RESERVE->hospital3_7
 z_ppe2_DUMMY_RESERVE->hospital3_7 z_ppe3_DUMMY_RESERVE->hospital3_7
 z_respirator1_DUMMY_RESERVE->hospital3_7
 z_respirator2_DUMMY_RESERVE->hospital3_7
 z_metal1_DUMMY_RESERVE->hospital4_7 z_metal2_DUMMY_RESERVE->hospital4_7
 z_plastic1_DUMMY_RESERVE->hospital4_7
 z_plastic2_DUMMY_RESERVE->hospital4_7
 z_plastic3_DUMMY_RESERVE->hospital4_7 z_ppe1_DUMMY_RESERVE->hospital4_7
 z_ppe2_DUMMY_RESERVE->hospital4_7 z_ppe3_DUMMY_RESERVE->hospital4_7
 z_respirator1_DUMMY_RESERVE->hospital4_7
 z_respirator2_DUMMY_RESERVE->hospital4_7 z_metal1_factory1->hospital1_8
 z_metal2_factory1->hospital1_8 z_plastic1_factory1->hospital1_8
 z_plastic2_factory1->hospital1_8 z_plastic3_factory1->hospital1_8
 z_ppe1_factory1->hospital1_8 z_ppe2_factory1->hospital1_8
 z_ppe3_factory1->hospital1_8 z_respirator1_factory1->hospital1_8
 z_respirator2_factory1->hospital1_8 z_metal1_factory1->hospital2_8
 z_metal2_factory1->hospital2_8 z_plastic1_factory1->hospital2_8
 z_plastic2_factory1->hospital2_8 z_plastic3_factory1->hospital2_8
 z_ppe1_factory1->hospital2_8 z_ppe2_factory1->hospital2_8
 z_ppe3_factory1->hospital2_8 z_respirator1_factory1->hospital2_8
 z_respirator2_factory1->hospital2_8 z_metal1_factory2->hospital3_8
 z_metal2_factory2->hospital3_8 z_plastic1_factory2->hospital3_8
 z_plastic2_factory2->hospital3_8 z_plastic3_factory2->hospital3_8
 z_ppe1_factory2->hospital3_8 z_ppe2_factory2->hospital3_8
 z_ppe3_factory2->hospital3_8 z_respirator1_factory2->hospital3_8
 z_respirator2_factory2->hospital3_8 z_metal1_factory2->hospital4_8
 z_metal2_factory2->hospital4_8 z_plastic1_factory2->hospital4_8
 z_plastic2_factory2->hospital4_8 z_plastic3_factory2->hospital4_8
 z_ppe1_factory2->hospital4_8 z_ppe2_factory2->hospital4_8
 z_ppe3_factory2->hospital4_8 z_respirator1_factory2->hospital4_8
 z_respirator2_factory2->hospital4_8 z_metal1_factory3->hospital1_8
 z_metal2_factory3->hospital1_8 z_plastic1_factory3->hospital1_8
 z_plastic2_factory3->hospital1_8 z_plastic3_factory3->hospital1_8
 z_ppe1_factory3->hospital1_8 z_ppe2_factory3->hospital1_8
 z_ppe3_factory3->hospital1_8 z_respirator1_factory3->hospital1_8
 z_respirator2_factory3->hospital1_8 z_metal1_factory3->hospital2_8
 z_metal2_factory3->hospital2_8 z_plastic1_factory3->hospital2_8
 z_plastic2_factory3->hospital2_8 z_plastic3_factory3->hospital2_8
 z_ppe1_factory3->hospital2_8 z_ppe2_factory3->hospital2_8
 z_ppe3_factory3->hospital2_8 z_respirator1_factory3->hospital2_8
 z_respirator2_factory3->hospital2_8 z_metal1_factory4->hospital3_8
 z_metal2_factory4->hospital3_8 z_plastic1_factory4->hospital3_8
 z_plastic2_factory4->hospital3_8 z_plastic3_factory4->hospital3_8
 z_ppe1_factory4->hospital3_8 z_ppe2_factory4->hospital3_8
 z_ppe3_factory4->hospital3_8 z_respirator1_factory4->hospital3_8
 z_respirator2_factory4->hospital3_8 z_metal1_factory4->hospital4_8
 z_metal2_factory4->hospital4_8 z_plastic1_factory4->hospital4_8
 z_plastic2_factory4->hospital4_8 z_plastic3_factory4->hospital4_8
 z_ppe1_factory4->hospital4_8 z_ppe2_factory4->hospital4_8
 z_ppe3_factory4->hospital4_8 z_respirator1_factory4->hospital4_8
 z_respirator2_factory4->hospital4_8 z_metal1_factory1->factory4_8
 z_metal2_factory1->factory4_8 z_plastic1_factory1->factory4_8
 z_plastic2_factory1->factory4_8 z_plastic3_factory1->factory4_8
 z_ppe1_factory1->factory4_8 z_ppe2_factory1->factory4_8
 z_ppe3_factory1->factory4_8 z_respirator1_factory1->factory4_8
 z_respirator2_factory1->factory4_8 z_metal1_factory1->factory2_8
 z_metal2_factory1->factory2_8 z_plastic1_factory1->factory2_8
 z_plastic2_factory1->factory2_8 z_plastic3_factory1->factory2_8
 z_ppe1_factory1->factory2_8 z_ppe2_factory1->factory2_8
 z_ppe3_factory1->factory2_8 z_respirator1_factory1->factory2_8
 z_respirator2_factory1->factory2_8 z_metal1_factory4->factory2_8
 z_metal2_factory4->factory2_8 z_plastic1_factory4->factory2_8
 z_plastic2_factory4->factory2_8 z_plastic3_factory4->factory2_8
 z_ppe1_factory4->factory2_8 z_ppe2_factory4->factory2_8
 z_ppe3_factory4->factory2_8 z_respirator1_factory4->factory2_8
 z_respirator2_factory4->factory2_8 z_metal1_hospital1->hospital2_8
 z_metal2_hospital1->hospital2_8 z_plastic1_hospital1->hospital2_8
 z_plastic2_hospital1->hospital2_8 z_plastic3_hospital1->hospital2_8
 z_ppe1_hospital1->hospital2_8 z_ppe2_hospital1->hospital2_8
 z_ppe3_hospital1->hospital2_8 z_respirator1_hospital1->hospital2_8
 z_respirator2_hospital1->hospital2_8 z_metal1_hospita2->hospital3_8
 z_metal2_hospita2->hospital3_8 z_plastic1_hospita2->hospital3_8
 z_plastic2_hospita2->hospital3_8 z_plastic3_hospita2->hospital3_8
 z_ppe1_hospita2->hospital3_8 z_ppe2_hospita2->hospital3_8
 z_ppe3_hospita2->hospital3_8 z_respirator1_hospita2->hospital3_8
 z_respirator2_hospita2->hospital3_8 z_metal1_DUMMY_RESERVE->factory1_8
 z_metal2_DUMMY_RESERVE->factory1_8 z_plastic1_DUMMY_RESERVE->factory1_8
 z_plastic2_DUMMY_RESERVE->factory1_8 z_plastic3_DUMMY_RESERVE->factory1_8
 z_ppe1_DUMMY_RESERVE->factory1_8 z_ppe2_DUMMY_RESERVE->factory1_8
 z_ppe3_DUMMY_RESERVE->factory1_8 z_respirator1_DUMMY_RESERVE->factory1_8
 z_respirator2_DUMMY_RESERVE->factory1_8 z_metal1_DUMMY_RESERVE->factory2_8
 z_metal2_DUMMY_RESERVE->factory2_8 z_plastic1_DUMMY_RESERVE->factory2_8
 z_plastic2_DUMMY_RESERVE->factory2_8 z_plastic3_DUMMY_RESERVE->factory2_8
 z_ppe1_DUMMY_RESERVE->factory2_8 z_ppe2_DUMMY_RESERVE->factory2_8
 z_ppe3_DUMMY_RESERVE->factory2_8 z_respirator1_DUMMY_RESERVE->factory2_8
 z_respirator2_DUMMY_RESERVE->factory2_8 z_metal1_DUMMY_RESERVE->factory3_8
 z_metal2_DUMMY_RESERVE->factory3_8 z_plastic1_DUMMY_RESERVE->factory3_8
 z_plastic2_DUMMY_RESERVE->factory3_8 z_plastic3_DUMMY_RESERVE->factory3_8
 z_ppe1_DUMMY_RESERVE->factory3_8 z_ppe2_DUMMY_RESERVE->factory3_8
 z_ppe3_DUMMY_RESERVE->factory3_8 z_respirator1_DUMMY_RESERVE->factory3_8
 z_respirator2_DUMMY_RESERVE->factory3_8 z_metal1_DUMMY_RESERVE->factory4_8
 z_metal2_DUMMY_RESERVE->factory4_8 z_plastic1_DUMMY_RESERVE->factory4_8
 z_plastic2_DUMMY_RESERVE->factory4_8 z_plastic3_DUMMY_RESERVE->factory4_8
 z_ppe1_DUMMY_RESERVE->factory4_8 z_ppe2_DUMMY_RESERVE->factory4_8
 z_ppe3_DUMMY_RESERVE->factory4_8 z_respirator1_DUMMY_RESERVE->factory4_8
 z_respirator2_DUMMY_RESERVE->factory4_8
 z_metal1_DUMMY_RESERVE->hospital1_8 z_metal2_DUMMY_RESERVE->hospital1_8
 z_plastic1_DUMMY_RESERVE->hospital1_8
 z_plastic2_DUMMY_RESERVE->hospital1_8
 z_plastic3_DUMMY_RESERVE->hospital1_8 z_ppe1_DUMMY_RESERVE->hospital1_8
 z_ppe2_DUMMY_RESERVE->hospital1_8 z_ppe3_DUMMY_RESERVE->hospital1_8
 z_respirator1_DUMMY_RESERVE->hospital1_8
 z_respirator2_DUMMY_RESERVE->hospital1_8
 z_metal1_DUMMY_RESERVE->hospital2_8 z_metal2_DUMMY_RESERVE->hospital2_8
 z_plastic1_DUMMY_RESERVE->hospital2_8
 z_plastic2_DUMMY_RESERVE->hospital2_8
 z_plastic3_DUMMY_RESERVE->hospital2_8 z_ppe1_DUMMY_RESERVE->hospital2_8
 z_ppe2_DUMMY_RESERVE->hospital2_8 z_ppe3_DUMMY_RESERVE->hospital2_8
 z_respirator1_DUMMY_RESERVE->hospital2_8
 z_respirator2_DUMMY_RESERVE->hospital2_8
 z_metal1_DUMMY_RESERVE->hospital3_8 z_metal2_DUMMY_RESERVE->hospital3_8
 z_plastic1_DUMMY_RESERVE->hospital3_8
 z_plastic2_DUMMY_RESERVE->hospital3_8
 z_plastic3_DUMMY_RESERVE->hospital3_8 z_ppe1_DUMMY_RESERVE->hospital3_8
 z_ppe2_DUMMY_RESERVE->hospital3_8 z_ppe3_DUMMY_RESERVE->hospital3_8
 z_respirator1_DUMMY_RESERVE->hospital3_8
 z_respirator2_DUMMY_RESERVE->hospital3_8
 z_metal1_DUMMY_RESERVE->hospital4_8 z_metal2_DUMMY_RESERVE->hospital4_8
 z_plastic1_DUMMY_RESERVE->hospital4_8
 z_plastic2_DUMMY_RESERVE->hospital4_8
 z_plastic3_DUMMY_RESERVE->hospital4_8 z_ppe1_DUMMY_RESERVE->hospital4_8
 z_ppe2_DUMMY_RESERVE->hospital4_8 z_ppe3_DUMMY_RESERVE->hospital4_8
 z_respirator1_DUMMY_RESERVE->hospital4_8
 z_respirator2_DUMMY_RESERVE->hospital4_8 z_metal1_factory1->hospital1_9
 z_metal2_factory1->hospital1_9 z_plastic1_factory1->hospital1_9
 z_plastic2_factory1->hospital1_9 z_plastic3_factory1->hospital1_9
 z_ppe1_factory1->hospital1_9 z_ppe2_factory1->hospital1_9
 z_ppe3_factory1->hospital1_9 z_respirator1_factory1->hospital1_9
 z_respirator2_factory1->hospital1_9 z_metal1_factory1->hospital2_9
 z_metal2_factory1->hospital2_9 z_plastic1_factory1->hospital2_9
 z_plastic2_factory1->hospital2_9 z_plastic3_factory1->hospital2_9
 z_ppe1_factory1->hospital2_9 z_ppe2_factory1->hospital2_9
 z_ppe3_factory1->hospital2_9 z_respirator1_factory1->hospital2_9
 z_respirator2_factory1->hospital2_9 z_metal1_factory2->hospital3_9
 z_metal2_factory2->hospital3_9 z_plastic1_factory2->hospital3_9
 z_plastic2_factory2->hospital3_9 z_plastic3_factory2->hospital3_9
 z_ppe1_factory2->hospital3_9 z_ppe2_factory2->hospital3_9
 z_ppe3_factory2->hospital3_9 z_respirator1_factory2->hospital3_9
 z_respirator2_factory2->hospital3_9 z_metal1_factory2->hospital4_9
 z_metal2_factory2->hospital4_9 z_plastic1_factory2->hospital4_9
 z_plastic2_factory2->hospital4_9 z_plastic3_factory2->hospital4_9
 z_ppe1_factory2->hospital4_9 z_ppe2_factory2->hospital4_9
 z_ppe3_factory2->hospital4_9 z_respirator1_factory2->hospital4_9
 z_respirator2_factory2->hospital4_9 z_metal1_factory3->hospital1_9
 z_metal2_factory3->hospital1_9 z_plastic1_factory3->hospital1_9
 z_plastic2_factory3->hospital1_9 z_plastic3_factory3->hospital1_9
 z_ppe1_factory3->hospital1_9 z_ppe2_factory3->hospital1_9
 z_ppe3_factory3->hospital1_9 z_respirator1_factory3->hospital1_9
 z_respirator2_factory3->hospital1_9 z_metal1_factory3->hospital2_9
 z_metal2_factory3->hospital2_9 z_plastic1_factory3->hospital2_9
 z_plastic2_factory3->hospital2_9 z_plastic3_factory3->hospital2_9
 z_ppe1_factory3->hospital2_9 z_ppe2_factory3->hospital2_9
 z_ppe3_factory3->hospital2_9 z_respirator1_factory3->hospital2_9
 z_respirator2_factory3->hospital2_9 z_metal1_factory4->hospital3_9
 z_metal2_factory4->hospital3_9 z_plastic1_factory4->hospital3_9
 z_plastic2_factory4->hospital3_9 z_plastic3_factory4->hospital3_9
 z_ppe1_factory4->hospital3_9 z_ppe2_factory4->hospital3_9
 z_ppe3_factory4->hospital3_9 z_respirator1_factory4->hospital3_9
 z_respirator2_factory4->hospital3_9 z_metal1_factory4->hospital4_9
 z_metal2_factory4->hospital4_9 z_plastic1_factory4->hospital4_9
 z_plastic2_factory4->hospital4_9 z_plastic3_factory4->hospital4_9
 z_ppe1_factory4->hospital4_9 z_ppe2_factory4->hospital4_9
 z_ppe3_factory4->hospital4_9 z_respirator1_factory4->hospital4_9
 z_respirator2_factory4->hospital4_9 z_metal1_factory1->factory4_9
 z_metal2_factory1->factory4_9 z_plastic1_factory1->factory4_9
 z_plastic2_factory1->factory4_9 z_plastic3_factory1->factory4_9
 z_ppe1_factory1->factory4_9 z_ppe2_factory1->factory4_9
 z_ppe3_factory1->factory4_9 z_respirator1_factory1->factory4_9
 z_respirator2_factory1->factory4_9 z_metal1_factory1->factory2_9
 z_metal2_factory1->factory2_9 z_plastic1_factory1->factory2_9
 z_plastic2_factory1->factory2_9 z_plastic3_factory1->factory2_9
 z_ppe1_factory1->factory2_9 z_ppe2_factory1->factory2_9
 z_ppe3_factory1->factory2_9 z_respirator1_factory1->factory2_9
 z_respirator2_factory1->factory2_9 z_metal1_factory4->factory2_9
 z_metal2_factory4->factory2_9 z_plastic1_factory4->factory2_9
 z_plastic2_factory4->factory2_9 z_plastic3_factory4->factory2_9
 z_ppe1_factory4->factory2_9 z_ppe2_factory4->factory2_9
 z_ppe3_factory4->factory2_9 z_respirator1_factory4->factory2_9
 z_respirator2_factory4->factory2_9 z_metal1_hospital1->hospital2_9
 z_metal2_hospital1->hospital2_9 z_plastic1_hospital1->hospital2_9
 z_plastic2_hospital1->hospital2_9 z_plastic3_hospital1->hospital2_9
 z_ppe1_hospital1->hospital2_9 z_ppe2_hospital1->hospital2_9
 z_ppe3_hospital1->hospital2_9 z_respirator1_hospital1->hospital2_9
 z_respirator2_hospital1->hospital2_9 z_metal1_hospita2->hospital3_9
 z_metal2_hospita2->hospital3_9 z_plastic1_hospita2->hospital3_9
 z_plastic2_hospita2->hospital3_9 z_plastic3_hospita2->hospital3_9
 z_ppe1_hospita2->hospital3_9 z_ppe2_hospita2->hospital3_9
 z_ppe3_hospita2->hospital3_9 z_respirator1_hospita2->hospital3_9
 z_respirator2_hospita2->hospital3_9 z_metal1_DUMMY_RESERVE->factory1_9
 z_metal2_DUMMY_RESERVE->factory1_9 z_plastic1_DUMMY_RESERVE->factory1_9
 z_plastic2_DUMMY_RESERVE->factory1_9 z_plastic3_DUMMY_RESERVE->factory1_9
 z_ppe1_DUMMY_RESERVE->factory1_9 z_ppe2_DUMMY_RESERVE->factory1_9
 z_ppe3_DUMMY_RESERVE->factory1_9 z_respirator1_DUMMY_RESERVE->factory1_9
 z_respirator2_DUMMY_RESERVE->factory1_9 z_metal1_DUMMY_RESERVE->factory2_9
 z_metal2_DUMMY_RESERVE->factory2_9 z_plastic1_DUMMY_RESERVE->factory2_9
 z_plastic2_DUMMY_RESERVE->factory2_9 z_plastic3_DUMMY_RESERVE->factory2_9
 z_ppe1_DUMMY_RESERVE->factory2_9 z_ppe2_DUMMY_RESERVE->factory2_9
 z_ppe3_DUMMY_RESERVE->factory2_9 z_respirator1_DUMMY_RESERVE->factory2_9
 z_respirator2_DUMMY_RESERVE->factory2_9 z_metal1_DUMMY_RESERVE->factory3_9
 z_metal2_DUMMY_RESERVE->factory3_9 z_plastic1_DUMMY_RESERVE->factory3_9
 z_plastic2_DUMMY_RESERVE->factory3_9 z_plastic3_DUMMY_RESERVE->factory3_9
 z_ppe1_DUMMY_RESERVE->factory3_9 z_ppe2_DUMMY_RESERVE->factory3_9
 z_ppe3_DUMMY_RESERVE->factory3_9 z_respirator1_DUMMY_RESERVE->factory3_9
 z_respirator2_DUMMY_RESERVE->factory3_9 z_metal1_DUMMY_RESERVE->factory4_9
 z_metal2_DUMMY_RESERVE->factory4_9 z_plastic1_DUMMY_RESERVE->factory4_9
 z_plastic2_DUMMY_RESERVE->factory4_9 z_plastic3_DUMMY_RESERVE->factory4_9
 z_ppe1_DUMMY_RESERVE->factory4_9 z_ppe2_DUMMY_RESERVE->factory4_9
 z_ppe3_DUMMY_RESERVE->factory4_9 z_respirator1_DUMMY_RESERVE->factory4_9
 z_respirator2_DUMMY_RESERVE->factory4_9
 z_metal1_DUMMY_RESERVE->hospital1_9 z_metal2_DUMMY_RESERVE->hospital1_9
 z_plastic1_DUMMY_RESERVE->hospital1_9
 z_plastic2_DUMMY_RESERVE->hospital1_9
 z_plastic3_DUMMY_RESERVE->hospital1_9 z_ppe1_DUMMY_RESERVE->hospital1_9
 z_ppe2_DUMMY_RESERVE->hospital1_9 z_ppe3_DUMMY_RESERVE->hospital1_9
 z_respirator1_DUMMY_RESERVE->hospital1_9
 z_respirator2_DUMMY_RESERVE->hospital1_9
 z_metal1_DUMMY_RESERVE->hospital2_9 z_metal2_DUMMY_RESERVE->hospital2_9
 z_plastic1_DUMMY_RESERVE->hospital2_9
 z_plastic2_DUMMY_RESERVE->hospital2_9
 z_plastic3_DUMMY_RESERVE->hospital2_9 z_ppe1_DUMMY_RESERVE->hospital2_9
 z_ppe2_DUMMY_RESERVE->hospital2_9 z_ppe3_DUMMY_RESERVE->hospital2_9
 z_respirator1_DUMMY_RESERVE->hospital2_9
 z_respirator2_DUMMY_RESERVE->hospital2_9
 z_metal1_DUMMY_RESERVE->hospital3_9 z_metal2_DUMMY_RESERVE->hospital3_9
 z_plastic1_DUMMY_RESERVE->hospital3_9
 z_plastic2_DUMMY_RESERVE->hospital3_9
 z_plastic3_DUMMY_RESERVE->hospital3_9 z_ppe1_DUMMY_RESERVE->hospital3_9
 z_ppe2_DUMMY_RESERVE->hospital3_9 z_ppe3_DUMMY_RESERVE->hospital3_9
 z_respirator1_DUMMY_RESERVE->hospital3_9
 z_respirator2_DUMMY_RESERVE->hospital3_9
 z_metal1_DUMMY_RESERVE->hospital4_9 z_metal2_DUMMY_RESERVE->hospital4_9
 z_plastic1_DUMMY_RESERVE->hospital4_9
 z_plastic2_DUMMY_RESERVE->hospital4_9
 z_plastic3_DUMMY_RESERVE->hospital4_9 z_ppe1_DUMMY_RESERVE->hospital4_9
 z_ppe2_DUMMY_RESERVE->hospital4_9 z_ppe3_DUMMY_RESERVE->hospital4_9
 z_respirator1_DUMMY_RESERVE->hospital4_9
 z_respirator2_DUMMY_RESERVE->hospital4_9 z_metal1_factory1->hospital1_10
 z_metal2_factory1->hospital1_10 z_plastic1_factory1->hospital1_10
 z_plastic2_factory1->hospital1_10 z_plastic3_factory1->hospital1_10
 z_ppe1_factory1->hospital1_10 z_ppe2_factory1->hospital1_10
 z_ppe3_factory1->hospital1_10 z_respirator1_factory1->hospital1_10
 z_respirator2_factory1->hospital1_10 z_metal1_factory1->hospital2_10
 z_metal2_factory1->hospital2_10 z_plastic1_factory1->hospital2_10
 z_plastic2_factory1->hospital2_10 z_plastic3_factory1->hospital2_10
 z_ppe1_factory1->hospital2_10 z_ppe2_factory1->hospital2_10
 z_ppe3_factory1->hospital2_10 z_respirator1_factory1->hospital2_10
 z_respirator2_factory1->hospital2_10 z_metal1_factory2->hospital3_10
 z_metal2_factory2->hospital3_10 z_plastic1_factory2->hospital3_10
 z_plastic2_factory2->hospital3_10 z_plastic3_factory2->hospital3_10
 z_ppe1_factory2->hospital3_10 z_ppe2_factory2->hospital3_10
 z_ppe3_factory2->hospital3_10 z_respirator1_factory2->hospital3_10
 z_respirator2_factory2->hospital3_10 z_metal1_factory2->hospital4_10
 z_metal2_factory2->hospital4_10 z_plastic1_factory2->hospital4_10
 z_plastic2_factory2->hospital4_10 z_plastic3_factory2->hospital4_10
 z_ppe1_factory2->hospital4_10 z_ppe2_factory2->hospital4_10
 z_ppe3_factory2->hospital4_10 z_respirator1_factory2->hospital4_10
 z_respirator2_factory2->hospital4_10 z_metal1_factory3->hospital1_10
 z_metal2_factory3->hospital1_10 z_plastic1_factory3->hospital1_10
 z_plastic2_factory3->hospital1_10 z_plastic3_factory3->hospital1_10
 z_ppe1_factory3->hospital1_10 z_ppe2_factory3->hospital1_10
 z_ppe3_factory3->hospital1_10 z_respirator1_factory3->hospital1_10
 z_respirator2_factory3->hospital1_10 z_metal1_factory3->hospital2_10
 z_metal2_factory3->hospital2_10 z_plastic1_factory3->hospital2_10
 z_plastic2_factory3->hospital2_10 z_plastic3_factory3->hospital2_10
 z_ppe1_factory3->hospital2_10 z_ppe2_factory3->hospital2_10
 z_ppe3_factory3->hospital2_10 z_respirator1_factory3->hospital2_10
 z_respirator2_factory3->hospital2_10 z_metal1_factory4->hospital3_10
 z_metal2_factory4->hospital3_10 z_plastic1_factory4->hospital3_10
 z_plastic2_factory4->hospital3_10 z_plastic3_factory4->hospital3_10
 z_ppe1_factory4->hospital3_10 z_ppe2_factory4->hospital3_10
 z_ppe3_factory4->hospital3_10 z_respirator1_factory4->hospital3_10
 z_respirator2_factory4->hospital3_10 z_metal1_factory4->hospital4_10
 z_metal2_factory4->hospital4_10 z_plastic1_factory4->hospital4_10
 z_plastic2_factory4->hospital4_10 z_plastic3_factory4->hospital4_10
 z_ppe1_factory4->hospital4_10 z_ppe2_factory4->hospital4_10
 z_ppe3_factory4->hospital4_10 z_respirator1_factory4->hospital4_10
 z_respirator2_factory4->hospital4_10 z_metal1_factory1->factory4_10
 z_metal2_factory1->factory4_10 z_plastic1_factory1->factory4_10
 z_plastic2_factory1->factory4_10 z_plastic3_factory1->factory4_10
 z_ppe1_factory1->factory4_10 z_ppe2_factory1->factory4_10
 z_ppe3_factory1->factory4_10 z_respirator1_factory1->factory4_10
 z_respirator2_factory1->factory4_10 z_metal1_factory1->factory2_10
 z_metal2_factory1->factory2_10 z_plastic1_factory1->factory2_10
 z_plastic2_factory1->factory2_10 z_plastic3_factory1->factory2_10
 z_ppe1_factory1->factory2_10 z_ppe2_factory1->factory2_10
 z_ppe3_factory1->factory2_10 z_respirator1_factory1->factory2_10
 z_respirator2_factory1->factory2_10 z_metal1_factory4->factory2_10
 z_metal2_factory4->factory2_10 z_plastic1_factory4->factory2_10
 z_plastic2_factory4->factory2_10 z_plastic3_factory4->factory2_10
 z_ppe1_factory4->factory2_10 z_ppe2_factory4->factory2_10
 z_ppe3_factory4->factory2_10 z_respirator1_factory4->factory2_10
 z_respirator2_factory4->factory2_10 z_metal1_hospital1->hospital2_10
 z_metal2_hospital1->hospital2_10 z_plastic1_hospital1->hospital2_10
 z_plastic2_hospital1->hospital2_10 z_plastic3_hospital1->hospital2_10
 z_ppe1_hospital1->hospital2_10 z_ppe2_hospital1->hospital2_10
 z_ppe3_hospital1->hospital2_10 z_respirator1_hospital1->hospital2_10
 z_respirator2_hospital1->hospital2_10 z_metal1_hospita2->hospital3_10
 z_metal2_hospita2->hospital3_10 z_plastic1_hospita2->hospital3_10
 z_plastic2_hospita2->hospital3_10 z_plastic3_hospita2->hospital3_10
 z_ppe1_hospita2->hospital3_10 z_ppe2_hospita2->hospital3_10
 z_ppe3_hospita2->hospital3_10 z_respirator1_hospita2->hospital3_10
 z_respirator2_hospita2->hospital3_10 z_metal1_DUMMY_RESERVE->factory1_10
 z_metal2_DUMMY_RESERVE->factory1_10 z_plastic1_DUMMY_RESERVE->factory1_10
 z_plastic2_DUMMY_RESERVE->factory1_10
 z_plastic3_DUMMY_RESERVE->factory1_10 z_ppe1_DUMMY_RESERVE->factory1_10
 z_ppe2_DUMMY_RESERVE->factory1_10 z_ppe3_DUMMY_RESERVE->factory1_10
 z_respirator1_DUMMY_RESERVE->factory1_10
 z_respirator2_DUMMY_RESERVE->factory1_10
 z_metal1_DUMMY_RESERVE->factory2_10 z_metal2_DUMMY_RESERVE->factory2_10
 z_plastic1_DUMMY_RESERVE->factory2_10
 z_plastic2_DUMMY_RESERVE->factory2_10
 z_plastic3_DUMMY_RESERVE->factory2_10 z_ppe1_DUMMY_RESERVE->factory2_10
 z_ppe2_DUMMY_RESERVE->factory2_10 z_ppe3_DUMMY_RESERVE->factory2_10
 z_respirator1_DUMMY_RESERVE->factory2_10
 z_respirator2_DUMMY_RESERVE->factory2_10
 z_metal1_DUMMY_RESERVE->factory3_10 z_metal2_DUMMY_RESERVE->factory3_10
 z_plastic1_DUMMY_RESERVE->factory3_10
 z_plastic2_DUMMY_RESERVE->factory3_10
 z_plastic3_DUMMY_RESERVE->factory3_10 z_ppe1_DUMMY_RESERVE->factory3_10
 z_ppe2_DUMMY_RESERVE->factory3_10 z_ppe3_DUMMY_RESERVE->factory3_10
 z_respirator1_DUMMY_RESERVE->factory3_10
 z_respirator2_DUMMY_RESERVE->factory3_10
 z_metal1_DUMMY_RESERVE->factory4_10 z_metal2_DUMMY_RESERVE->factory4_10
 z_plastic1_DUMMY_RESERVE->factory4_10
 z_plastic2_DUMMY_RESERVE->factory4_10
 z_plastic3_DUMMY_RESERVE->factory4_10 z_ppe1_DUMMY_RESERVE->factory4_10
 z_ppe2_DUMMY_RESERVE->factory4_10 z_ppe3_DUMMY_RESERVE->factory4_10
 z_respirator1_DUMMY_RESERVE->factory4_10
 z_respirator2_DUMMY_RESERVE->factory4_10
 z_metal1_DUMMY_RESERVE->hospital1_10 z_metal2_DUMMY_RESERVE->hospital1_10
 z_plastic1_DUMMY_RESERVE->hospital1_10
 z_plastic2_DUMMY_RESERVE->hospital1_10
 z_plastic3_DUMMY_RESERVE->hospital1_10 z_ppe1_DUMMY_RESERVE->hospital1_10
 z_ppe2_DUMMY_RESERVE->hospital1_10 z_ppe3_DUMMY_RESERVE->hospital1_10
 z_respirator1_DUMMY_RESERVE->hospital1_10
 z_respirator2_DUMMY_RESERVE->hospital1_10
 z_metal1_DUMMY_RESERVE->hospital2_10 z_metal2_DUMMY_RESERVE->hospital2_10
 z_plastic1_DUMMY_RESERVE->hospital2_10
 z_plastic2_DUMMY_RESERVE->hospital2_10
 z_plastic3_DUMMY_RESERVE->hospital2_10 z_ppe1_DUMMY_RESERVE->hospital2_10
 z_ppe2_DUMMY_RESERVE->hospital2_10 z_ppe3_DUMMY_RESERVE->hospital2_10
 z_respirator1_DUMMY_RESERVE->hospital2_10
 z_respirator2_DUMMY_RESERVE->hospital2_10
 z_metal1_DUMMY_RESERVE->hospital3_10 z_metal2_DUMMY_RESERVE->hospital3_10
 z_plastic1_DUMMY_RESERVE->hospital3_10
 z_plastic2_DUMMY_RESERVE->hospital3_10
 z_plastic3_DUMMY_RESERVE->hospital3_10 z_ppe1_DUMMY_RESERVE->hospital3_10
 z_ppe2_DUMMY_RESERVE->hospital3_10 z_ppe3_DUMMY_RESERVE->hospital3_10
 z_respirator1_DUMMY_RESERVE->hospital3_10
 z_respirator2_DUMMY_RESERVE->hospital3_10
 z_metal1_DUMMY_RESERVE->hospital4_10 z_metal2_DUMMY_RESERVE->hospital4_10
 z_plastic1_DUMMY_RESERVE->hospital4_10
 z_plastic2_DUMMY_RESERVE->hospital4_10
 z_plastic3_DUMMY_RESERVE->hospital4_10 z_ppe1_DUMMY_RESERVE->hospital4_10
 z_ppe2_DUMMY_RESERVE->hospital4_10 z_ppe3_DUMMY_RESERVE->hospital4_10
 z_respirator1_DUMMY_RESERVE->hospital4_10
 z_respirator2_DUMMY_RESERVE->hospital4_10 z_metal1_factory1->hospital1_11
 z_metal2_factory1->hospital1_11 z_plastic1_factory1->hospital1_11
 z_plastic2_factory1->hospital1_11 z_plastic3_factory1->hospital1_11
 z_ppe1_factory1->hospital1_11 z_ppe2_factory1->hospital1_11
 z_ppe3_factory1->hospital1_11 z_respirator1_factory1->hospital1_11
 z_respirator2_factory1->hospital1_11 z_metal1_factory1->hospital2_11
 z_metal2_factory1->hospital2_11 z_plastic1_factory1->hospital2_11
 z_plastic2_factory1->hospital2_11 z_plastic3_factory1->hospital2_11
 z_ppe1_factory1->hospital2_11 z_ppe2_factory1->hospital2_11
 z_ppe3_factory1->hospital2_11 z_respirator1_factory1->hospital2_11
 z_respirator2_factory1->hospital2_11 z_metal1_factory2->hospital3_11
 z_metal2_factory2->hospital3_11 z_plastic1_factory2->hospital3_11
 z_plastic2_factory2->hospital3_11 z_plastic3_factory2->hospital3_11
 z_ppe1_factory2->hospital3_11 z_ppe2_factory2->hospital3_11
 z_ppe3_factory2->hospital3_11 z_respirator1_factory2->hospital3_11
 z_respirator2_factory2->hospital3_11 z_metal1_factory2->hospital4_11
 z_metal2_factory2->hospital4_11 z_plastic1_factory2->hospital4_11
 z_plastic2_factory2->hospital4_11 z_plastic3_factory2->hospital4_11
 z_ppe1_factory2->hospital4_11 z_ppe2_factory2->hospital4_11
 z_ppe3_factory2->hospital4_11 z_respirator1_factory2->hospital4_11
 z_respirator2_factory2->hospital4_11 z_metal1_factory3->hospital1_11
 z_metal2_factory3->hospital1_11 z_plastic1_factory3->hospital1_11
 z_plastic2_factory3->hospital1_11 z_plastic3_factory3->hospital1_11
 z_ppe1_factory3->hospital1_11 z_ppe2_factory3->hospital1_11
 z_ppe3_factory3->hospital1_11 z_respirator1_factory3->hospital1_11
 z_respirator2_factory3->hospital1_11 z_metal1_factory3->hospital2_11
 z_metal2_factory3->hospital2_11 z_plastic1_factory3->hospital2_11
 z_plastic2_factory3->hospital2_11 z_plastic3_factory3->hospital2_11
 z_ppe1_factory3->hospital2_11 z_ppe2_factory3->hospital2_11
 z_ppe3_factory3->hospital2_11 z_respirator1_factory3->hospital2_11
 z_respirator2_factory3->hospital2_11 z_metal1_factory4->hospital3_11
 z_metal2_factory4->hospital3_11 z_plastic1_factory4->hospital3_11
 z_plastic2_factory4->hospital3_11 z_plastic3_factory4->hospital3_11
 z_ppe1_factory4->hospital3_11 z_ppe2_factory4->hospital3_11
 z_ppe3_factory4->hospital3_11 z_respirator1_factory4->hospital3_11
 z_respirator2_factory4->hospital3_11 z_metal1_factory4->hospital4_11
 z_metal2_factory4->hospital4_11 z_plastic1_factory4->hospital4_11
 z_plastic2_factory4->hospital4_11 z_plastic3_factory4->hospital4_11
 z_ppe1_factory4->hospital4_11 z_ppe2_factory4->hospital4_11
 z_ppe3_factory4->hospital4_11 z_respirator1_factory4->hospital4_11
 z_respirator2_factory4->hospital4_11 z_metal1_factory1->factory4_11
 z_metal2_factory1->factory4_11 z_plastic1_factory1->factory4_11
 z_plastic2_factory1->factory4_11 z_plastic3_factory1->factory4_11
 z_ppe1_factory1->factory4_11 z_ppe2_factory1->factory4_11
 z_ppe3_factory1->factory4_11 z_respirator1_factory1->factory4_11
 z_respirator2_factory1->factory4_11 z_metal1_factory1->factory2_11
 z_metal2_factory1->factory2_11 z_plastic1_factory1->factory2_11
 z_plastic2_factory1->factory2_11 z_plastic3_factory1->factory2_11
 z_ppe1_factory1->factory2_11 z_ppe2_factory1->factory2_11
 z_ppe3_factory1->factory2_11 z_respirator1_factory1->factory2_11
 z_respirator2_factory1->factory2_11 z_metal1_factory4->factory2_11
 z_metal2_factory4->factory2_11 z_plastic1_factory4->factory2_11
 z_plastic2_factory4->factory2_11 z_plastic3_factory4->factory2_11
 z_ppe1_factory4->factory2_11 z_ppe2_factory4->factory2_11
 z_ppe3_factory4->factory2_11 z_respirator1_factory4->factory2_11
 z_respirator2_factory4->factory2_11 z_metal1_hospital1->hospital2_11
 z_metal2_hospital1->hospital2_11 z_plastic1_hospital1->hospital2_11
 z_plastic2_hospital1->hospital2_11 z_plastic3_hospital1->hospital2_11
 z_ppe1_hospital1->hospital2_11 z_ppe2_hospital1->hospital2_11
 z_ppe3_hospital1->hospital2_11 z_respirator1_hospital1->hospital2_11
 z_respirator2_hospital1->hospital2_11 z_metal1_hospita2->hospital3_11
 z_metal2_hospita2->hospital3_11 z_plastic1_hospita2->hospital3_11
 z_plastic2_hospita2->hospital3_11 z_plastic3_hospita2->hospital3_11
 z_ppe1_hospita2->hospital3_11 z_ppe2_hospita2->hospital3_11
 z_ppe3_hospita2->hospital3_11 z_respirator1_hospita2->hospital3_11
 z_respirator2_hospita2->hospital3_11 z_metal1_DUMMY_RESERVE->factory1_11
 z_metal2_DUMMY_RESERVE->factory1_11 z_plastic1_DUMMY_RESERVE->factory1_11
 z_plastic2_DUMMY_RESERVE->factory1_11
 z_plastic3_DUMMY_RESERVE->factory1_11 z_ppe1_DUMMY_RESERVE->factory1_11
 z_ppe2_DUMMY_RESERVE->factory1_11 z_ppe3_DUMMY_RESERVE->factory1_11
 z_respirator1_DUMMY_RESERVE->factory1_11
 z_respirator2_DUMMY_RESERVE->factory1_11
 z_metal1_DUMMY_RESERVE->factory2_11 z_metal2_DUMMY_RESERVE->factory2_11
 z_plastic1_DUMMY_RESERVE->factory2_11
 z_plastic2_DUMMY_RESERVE->factory2_11
 z_plastic3_DUMMY_RESERVE->factory2_11 z_ppe1_DUMMY_RESERVE->factory2_11
 z_ppe2_DUMMY_RESERVE->factory2_11 z_ppe3_DUMMY_RESERVE->factory2_11
 z_respirator1_DUMMY_RESERVE->factory2_11
 z_respirator2_DUMMY_RESERVE->factory2_11
 z_metal1_DUMMY_RESERVE->factory3_11 z_metal2_DUMMY_RESERVE->factory3_11
 z_plastic1_DUMMY_RESERVE->factory3_11
 z_plastic2_DUMMY_RESERVE->factory3_11
 z_plastic3_DUMMY_RESERVE->factory3_11 z_ppe1_DUMMY_RESERVE->factory3_11
 z_ppe2_DUMMY_RESERVE->factory3_11 z_ppe3_DUMMY_RESERVE->factory3_11
 z_respirator1_DUMMY_RESERVE->factory3_11
 z_respirator2_DUMMY_RESERVE->factory3_11
 z_metal1_DUMMY_RESERVE->factory4_11 z_metal2_DUMMY_RESERVE->factory4_11
 z_plastic1_DUMMY_RESERVE->factory4_11
 z_plastic2_DUMMY_RESERVE->factory4_11
 z_plastic3_DUMMY_RESERVE->factory4_11 z_ppe1_DUMMY_RESERVE->factory4_11
 z_ppe2_DUMMY_RESERVE->factory4_11 z_ppe3_DUMMY_RESERVE->factory4_11
 z_respirator1_DUMMY_RESERVE->factory4_11
 z_respirator2_DUMMY_RESERVE->factory4_11
 z_metal1_DUMMY_RESERVE->hospital1_11 z_metal2_DUMMY_RESERVE->hospital1_11
 z_plastic1_DUMMY_RESERVE->hospital1_11
 z_plastic2_DUMMY_RESERVE->hospital1_11
 z_plastic3_DUMMY_RESERVE->hospital1_11 z_ppe1_DUMMY_RESERVE->hospital1_11
 z_ppe2_DUMMY_RESERVE->hospital1_11 z_ppe3_DUMMY_RESERVE->hospital1_11
 z_respirator1_DUMMY_RESERVE->hospital1_11
 z_respirator2_DUMMY_RESERVE->hospital1_11
 z_metal1_DUMMY_RESERVE->hospital2_11 z_metal2_DUMMY_RESERVE->hospital2_11
 z_plastic1_DUMMY_RESERVE->hospital2_11
 z_plastic2_DUMMY_RESERVE->hospital2_11
 z_plastic3_DUMMY_RESERVE->hospital2_11 z_ppe1_DUMMY_RESERVE->hospital2_11
 z_ppe2_DUMMY_RESERVE->hospital2_11 z_ppe3_DUMMY_RESERVE->hospital2_11
 z_respirator1_DUMMY_RESERVE->hospital2_11
 z_respirator2_DUMMY_RESERVE->hospital2_11
 z_metal1_DUMMY_RESERVE->hospital3_11 z_metal2_DUMMY_RESERVE->hospital3_11
 z_plastic1_DUMMY_RESERVE->hospital3_11
 z_plastic2_DUMMY_RESERVE->hospital3_11
 z_plastic3_DUMMY_RESERVE->hospital3_11 z_ppe1_DUMMY_RESERVE->hospital3_11
 z_ppe2_DUMMY_RESERVE->hospital3_11 z_ppe3_DUMMY_RESERVE->hospital3_11
 z_respirator1_DUMMY_RESERVE->hospital3_11
 z_respirator2_DUMMY_RESERVE->hospital3_11
 z_metal1_DUMMY_RESERVE->hospital4_11 z_metal2_DUMMY_RESERVE->hospital4_11
 z_plastic1_DUMMY_RESERVE->hospital4_11
 z_plastic2_DUMMY_RESERVE->hospital4_11
 z_plastic3_DUMMY_RESERVE->hospital4_11 z_ppe1_DUMMY_RESERVE->hospital4_11
 z_ppe2_DUMMY_RESERVE->hospital4_11 z_ppe3_DUMMY_RESERVE->hospital4_11
 z_respirator1_DUMMY_RESERVE->hospital4_11
 z_respirator2_DUMMY_RESERVE->hospital4_11 z_metal1_factory1->hospital1_12
 z_metal2_factory1->hospital1_12 z_plastic1_factory1->hospital1_12
 z_plastic2_factory1->hospital1_12 z_plastic3_factory1->hospital1_12
 z_ppe1_factory1->hospital1_12 z_ppe2_factory1->hospital1_12
 z_ppe3_factory1->hospital1_12 z_respirator1_factory1->hospital1_12
 z_respirator2_factory1->hospital1_12 z_metal1_factory1->hospital2_12
 z_metal2_factory1->hospital2_12 z_plastic1_factory1->hospital2_12
 z_plastic2_factory1->hospital2_12 z_plastic3_factory1->hospital2_12
 z_ppe1_factory1->hospital2_12 z_ppe2_factory1->hospital2_12
 z_ppe3_factory1->hospital2_12 z_respirator1_factory1->hospital2_12
 z_respirator2_factory1->hospital2_12 z_metal1_factory2->hospital3_12
 z_metal2_factory2->hospital3_12 z_plastic1_factory2->hospital3_12
 z_plastic2_factory2->hospital3_12 z_plastic3_factory2->hospital3_12
 z_ppe1_factory2->hospital3_12 z_ppe2_factory2->hospital3_12
 z_ppe3_factory2->hospital3_12 z_respirator1_factory2->hospital3_12
 z_respirator2_factory2->hospital3_12 z_metal1_factory2->hospital4_12
 z_metal2_factory2->hospital4_12 z_plastic1_factory2->hospital4_12
 z_plastic2_factory2->hospital4_12 z_plastic3_factory2->hospital4_12
 z_ppe1_factory2->hospital4_12 z_ppe2_factory2->hospital4_12
 z_ppe3_factory2->hospital4_12 z_respirator1_factory2->hospital4_12
 z_respirator2_factory2->hospital4_12 z_metal1_factory3->hospital1_12
 z_metal2_factory3->hospital1_12 z_plastic1_factory3->hospital1_12
 z_plastic2_factory3->hospital1_12 z_plastic3_factory3->hospital1_12
 z_ppe1_factory3->hospital1_12 z_ppe2_factory3->hospital1_12
 z_ppe3_factory3->hospital1_12 z_respirator1_factory3->hospital1_12
 z_respirator2_factory3->hospital1_12 z_metal1_factory3->hospital2_12
 z_metal2_factory3->hospital2_12 z_plastic1_factory3->hospital2_12
 z_plastic2_factory3->hospital2_12 z_plastic3_factory3->hospital2_12
 z_ppe1_factory3->hospital2_12 z_ppe2_factory3->hospital2_12
 z_ppe3_factory3->hospital2_12 z_respirator1_factory3->hospital2_12
 z_respirator2_factory3->hospital2_12 z_metal1_factory4->hospital3_12
 z_metal2_factory4->hospital3_12 z_plastic1_factory4->hospital3_12
 z_plastic2_factory4->hospital3_12 z_plastic3_factory4->hospital3_12
 z_ppe1_factory4->hospital3_12 z_ppe2_factory4->hospital3_12
 z_ppe3_factory4->hospital3_12 z_respirator1_factory4->hospital3_12
 z_respirator2_factory4->hospital3_12 z_metal1_factory4->hospital4_12
 z_metal2_factory4->hospital4_12 z_plastic1_factory4->hospital4_12
 z_plastic2_factory4->hospital4_12 z_plastic3_factory4->hospital4_12
 z_ppe1_factory4->hospital4_12 z_ppe2_factory4->hospital4_12
 z_ppe3_factory4->hospital4_12 z_respirator1_factory4->hospital4_12
 z_respirator2_factory4->hospital4_12 z_metal1_factory1->factory4_12
 z_metal2_factory1->factory4_12 z_plastic1_factory1->factory4_12
 z_plastic2_factory1->factory4_12 z_plastic3_factory1->factory4_12
 z_ppe1_factory1->factory4_12 z_ppe2_factory1->factory4_12
 z_ppe3_factory1->factory4_12 z_respirator1_factory1->factory4_12
 z_respirator2_factory1->factory4_12 z_metal1_factory1->factory2_12
 z_metal2_factory1->factory2_12 z_plastic1_factory1->factory2_12
 z_plastic2_factory1->factory2_12 z_plastic3_factory1->factory2_12
 z_ppe1_factory1->factory2_12 z_ppe2_factory1->factory2_12
 z_ppe3_factory1->factory2_12 z_respirator1_factory1->factory2_12
 z_respirator2_factory1->factory2_12 z_metal1_factory4->factory2_12
 z_metal2_factory4->factory2_12 z_plastic1_factory4->factory2_12
 z_plastic2_factory4->factory2_12 z_plastic3_factory4->factory2_12
 z_ppe1_factory4->factory2_12 z_ppe2_factory4->factory2_12
 z_ppe3_factory4->factory2_12 z_respirator1_factory4->factory2_12
 z_respirator2_factory4->factory2_12 z_metal1_hospital1->hospital2_12
 z_metal2_hospital1->hospital2_12 z_plastic1_hospital1->hospital2_12
 z_plastic2_hospital1->hospital2_12 z_plastic3_hospital1->hospital2_12
 z_ppe1_hospital1->hospital2_12 z_ppe2_hospital1->hospital2_12
 z_ppe3_hospital1->hospital2_12 z_respirator1_hospital1->hospital2_12
 z_respirator2_hospital1->hospital2_12 z_metal1_hospita2->hospital3_12
 z_metal2_hospita2->hospital3_12 z_plastic1_hospita2->hospital3_12
 z_plastic2_hospita2->hospital3_12 z_plastic3_hospita2->hospital3_12
 z_ppe1_hospita2->hospital3_12 z_ppe2_hospita2->hospital3_12
 z_ppe3_hospita2->hospital3_12 z_respirator1_hospita2->hospital3_12
 z_respirator2_hospita2->hospital3_12 z_metal1_DUMMY_RESERVE->factory1_12
 z_metal2_DUMMY_RESERVE->factory1_12 z_plastic1_DUMMY_RESERVE->factory1_12
 z_plastic2_DUMMY_RESERVE->factory1_12
 z_plastic3_DUMMY_RESERVE->factory1_12 z_ppe1_DUMMY_RESERVE->factory1_12
 z_ppe2_DUMMY_RESERVE->factory1_12 z_ppe3_DUMMY_RESERVE->factory1_12
 z_respirator1_DUMMY_RESERVE->factory1_12
 z_respirator2_DUMMY_RESERVE->factory1_12
 z_metal1_DUMMY_RESERVE->factory2_12 z_metal2_DUMMY_RESERVE->factory2_12
 z_plastic1_DUMMY_RESERVE->factory2_12
 z_plastic2_DUMMY_RESERVE->factory2_12
 z_plastic3_DUMMY_RESERVE->factory2_12 z_ppe1_DUMMY_RESERVE->factory2_12
 z_ppe2_DUMMY_RESERVE->factory2_12 z_ppe3_DUMMY_RESERVE->factory2_12
 z_respirator1_DUMMY_RESERVE->factory2_12
 z_respirator2_DUMMY_RESERVE->factory2_12
 z_metal1_DUMMY_RESERVE->factory3_12 z_metal2_DUMMY_RESERVE->factory3_12
 z_plastic1_DUMMY_RESERVE->factory3_12
 z_plastic2_DUMMY_RESERVE->factory3_12
 z_plastic3_DUMMY_RESERVE->factory3_12 z_ppe1_DUMMY_RESERVE->factory3_12
 z_ppe2_DUMMY_RESERVE->factory3_12 z_ppe3_DUMMY_RESERVE->factory3_12
 z_respirator1_DUMMY_RESERVE->factory3_12
 z_respirator2_DUMMY_RESERVE->factory3_12
 z_metal1_DUMMY_RESERVE->factory4_12 z_metal2_DUMMY_RESERVE->factory4_12
 z_plastic1_DUMMY_RESERVE->factory4_12
 z_plastic2_DUMMY_RESERVE->factory4_12
 z_plastic3_DUMMY_RESERVE->factory4_12 z_ppe1_DUMMY_RESERVE->factory4_12
 z_ppe2_DUMMY_RESERVE->factory4_12 z_ppe3_DUMMY_RESERVE->factory4_12
 z_respirator1_DUMMY_RESERVE->factory4_12
 z_respirator2_DUMMY_RESERVE->factory4_12
 z_metal1_DUMMY_RESERVE->hospital1_12 z_metal2_DUMMY_RESERVE->hospital1_12
 z_plastic1_DUMMY_RESERVE->hospital1_12
 z_plastic2_DUMMY_RESERVE->hospital1_12
 z_plastic3_DUMMY_RESERVE->hospital1_12 z_ppe1_DUMMY_RESERVE->hospital1_12
 z_ppe2_DUMMY_RESERVE->hospital1_12 z_ppe3_DUMMY_RESERVE->hospital1_12
 z_respirator1_DUMMY_RESERVE->hospital1_12
 z_respirator2_DUMMY_RESERVE->hospital1_12
 z_metal1_DUMMY_RESERVE->hospital2_12 z_metal2_DUMMY_RESERVE->hospital2_12
 z_plastic1_DUMMY_RESERVE->hospital2_12
 z_plastic2_DUMMY_RESERVE->hospital2_12
 z_plastic3_DUMMY_RESERVE->hospital2_12 z_ppe1_DUMMY_RESERVE->hospital2_12
 z_ppe2_DUMMY_RESERVE->hospital2_12 z_ppe3_DUMMY_RESERVE->hospital2_12
 z_respirator1_DUMMY_RESERVE->hospital2_12
 z_respirator2_DUMMY_RESERVE->hospital2_12
 z_metal1_DUMMY_RESERVE->hospital3_12 z_metal2_DUMMY_RESERVE->hospital3_12
 z_plastic1_DUMMY_RESERVE->hospital3_12
 z_plastic2_DUMMY_RESERVE->hospital3_12
 z_plastic3_DUMMY_RESERVE->hospital3_12 z_ppe1_DUMMY_RESERVE->hospital3_12
 z_ppe2_DUMMY_RESERVE->hospital3_12 z_ppe3_DUMMY_RESERVE->hospital3_12
 z_respirator1_DUMMY_RESERVE->hospital3_12
 z_respirator2_DUMMY_RESERVE->hospital3_12
 z_metal1_DUMMY_RESERVE->hospital4_12 z_metal2_DUMMY_RESERVE->hospital4_12
 z_plastic1_DUMMY_RESERVE->hospital4_12
 z_plastic2_DUMMY_RESERVE->hospital4_12
 z_plastic3_DUMMY_RESERVE->hospital4_12 z_ppe1_DUMMY_RESERVE->hospital4_12
 z_ppe2_DUMMY_RESERVE->hospital4_12 z_ppe3_DUMMY_RESERVE->hospital4_12
 z_respirator1_DUMMY_RESERVE->hospital4_12
 z_respirator2_DUMMY_RESERVE->hospital4_12 z_metal1_factory1->hospital1_13
 z_metal2_factory1->hospital1_13 z_plastic1_factory1->hospital1_13
 z_plastic2_factory1->hospital1_13 z_plastic3_factory1->hospital1_13
 z_ppe1_factory1->hospital1_13 z_ppe2_factory1->hospital1_13
 z_ppe3_factory1->hospital1_13 z_respirator1_factory1->hospital1_13
 z_respirator2_factory1->hospital1_13 z_metal1_factory1->hospital2_13
 z_metal2_factory1->hospital2_13 z_plastic1_factory1->hospital2_13
 z_plastic2_factory1->hospital2_13 z_plastic3_factory1->hospital2_13
 z_ppe1_factory1->hospital2_13 z_ppe2_factory1->hospital2_13
 z_ppe3_factory1->hospital2_13 z_respirator1_factory1->hospital2_13
 z_respirator2_factory1->hospital2_13 z_metal1_factory2->hospital3_13
 z_metal2_factory2->hospital3_13 z_plastic1_factory2->hospital3_13
 z_plastic2_factory2->hospital3_13 z_plastic3_factory2->hospital3_13
 z_ppe1_factory2->hospital3_13 z_ppe2_factory2->hospital3_13
 z_ppe3_factory2->hospital3_13 z_respirator1_factory2->hospital3_13
 z_respirator2_factory2->hospital3_13 z_metal1_factory2->hospital4_13
 z_metal2_factory2->hospital4_13 z_plastic1_factory2->hospital4_13
 z_plastic2_factory2->hospital4_13 z_plastic3_factory2->hospital4_13
 z_ppe1_factory2->hospital4_13 z_ppe2_factory2->hospital4_13
 z_ppe3_factory2->hospital4_13 z_respirator1_factory2->hospital4_13
 z_respirator2_factory2->hospital4_13 z_metal1_factory3->hospital1_13
 z_metal2_factory3->hospital1_13 z_plastic1_factory3->hospital1_13
 z_plastic2_factory3->hospital1_13 z_plastic3_factory3->hospital1_13
 z_ppe1_factory3->hospital1_13 z_ppe2_factory3->hospital1_13
 z_ppe3_factory3->hospital1_13 z_respirator1_factory3->hospital1_13
 z_respirator2_factory3->hospital1_13 z_metal1_factory3->hospital2_13
 z_metal2_factory3->hospital2_13 z_plastic1_factory3->hospital2_13
 z_plastic2_factory3->hospital2_13 z_plastic3_factory3->hospital2_13
 z_ppe1_factory3->hospital2_13 z_ppe2_factory3->hospital2_13
 z_ppe3_factory3->hospital2_13 z_respirator1_factory3->hospital2_13
 z_respirator2_factory3->hospital2_13 z_metal1_factory4->hospital3_13
 z_metal2_factory4->hospital3_13 z_plastic1_factory4->hospital3_13
 z_plastic2_factory4->hospital3_13 z_plastic3_factory4->hospital3_13
 z_ppe1_factory4->hospital3_13 z_ppe2_factory4->hospital3_13
 z_ppe3_factory4->hospital3_13 z_respirator1_factory4->hospital3_13
 z_respirator2_factory4->hospital3_13 z_metal1_factory4->hospital4_13
 z_metal2_factory4->hospital4_13 z_plastic1_factory4->hospital4_13
 z_plastic2_factory4->hospital4_13 z_plastic3_factory4->hospital4_13
 z_ppe1_factory4->hospital4_13 z_ppe2_factory4->hospital4_13
 z_ppe3_factory4->hospital4_13 z_respirator1_factory4->hospital4_13
 z_respirator2_factory4->hospital4_13 z_metal1_factory1->factory4_13
 z_metal2_factory1->factory4_13 z_plastic1_factory1->factory4_13
 z_plastic2_factory1->factory4_13 z_plastic3_factory1->factory4_13
 z_ppe1_factory1->factory4_13 z_ppe2_factory1->factory4_13
 z_ppe3_factory1->factory4_13 z_respirator1_factory1->factory4_13
 z_respirator2_factory1->factory4_13 z_metal1_factory1->factory2_13
 z_metal2_factory1->factory2_13 z_plastic1_factory1->factory2_13
 z_plastic2_factory1->factory2_13 z_plastic3_factory1->factory2_13
 z_ppe1_factory1->factory2_13 z_ppe2_factory1->factory2_13
 z_ppe3_factory1->factory2_13 z_respirator1_factory1->factory2_13
 z_respirator2_factory1->factory2_13 z_metal1_factory4->factory2_13
 z_metal2_factory4->factory2_13 z_plastic1_factory4->factory2_13
 z_plastic2_factory4->factory2_13 z_plastic3_factory4->factory2_13
 z_ppe1_factory4->factory2_13 z_ppe2_factory4->factory2_13
 z_ppe3_factory4->factory2_13 z_respirator1_factory4->factory2_13
 z_respirator2_factory4->factory2_13 z_metal1_hospital1->hospital2_13
 z_metal2_hospital1->hospital2_13 z_plastic1_hospital1->hospital2_13
 z_plastic2_hospital1->hospital2_13 z_plastic3_hospital1->hospital2_13
 z_ppe1_hospital1->hospital2_13 z_ppe2_hospital1->hospital2_13
 z_ppe3_hospital1->hospital2_13 z_respirator1_hospital1->hospital2_13
 z_respirator2_hospital1->hospital2_13 z_metal1_hospita2->hospital3_13
 z_metal2_hospita2->hospital3_13 z_plastic1_hospita2->hospital3_13
 z_plastic2_hospita2->hospital3_13 z_plastic3_hospita2->hospital3_13
 z_ppe1_hospita2->hospital3_13 z_ppe2_hospita2->hospital3_13
 z_ppe3_hospita2->hospital3_13 z_respirator1_hospita2->hospital3_13
 z_respirator2_hospita2->hospital3_13 z_metal1_DUMMY_RESERVE->factory1_13
 z_metal2_DUMMY_RESERVE->factory1_13 z_plastic1_DUMMY_RESERVE->factory1_13
 z_plastic2_DUMMY_RESERVE->factory1_13
 z_plastic3_DUMMY_RESERVE->factory1_13 z_ppe1_DUMMY_RESERVE->factory1_13
 z_ppe2_DUMMY_RESERVE->factory1_13 z_ppe3_DUMMY_RESERVE->factory1_13
 z_respirator1_DUMMY_RESERVE->factory1_13
 z_respirator2_DUMMY_RESERVE->factory1_13
 z_metal1_DUMMY_RESERVE->factory2_13 z_metal2_DUMMY_RESERVE->factory2_13
 z_plastic1_DUMMY_RESERVE->factory2_13
 z_plastic2_DUMMY_RESERVE->factory2_13
 z_plastic3_DUMMY_RESERVE->factory2_13 z_ppe1_DUMMY_RESERVE->factory2_13
 z_ppe2_DUMMY_RESERVE->factory2_13 z_ppe3_DUMMY_RESERVE->factory2_13
 z_respirator1_DUMMY_RESERVE->factory2_13
 z_respirator2_DUMMY_RESERVE->factory2_13
 z_metal1_DUMMY_RESERVE->factory3_13 z_metal2_DUMMY_RESERVE->factory3_13
 z_plastic1_DUMMY_RESERVE->factory3_13
 z_plastic2_DUMMY_RESERVE->factory3_13
 z_plastic3_DUMMY_RESERVE->factory3_13 z_ppe1_DUMMY_RESERVE->factory3_13
 z_ppe2_DUMMY_RESERVE->factory3_13 z_ppe3_DUMMY_RESERVE->factory3_13
 z_respirator1_DUMMY_RESERVE->factory3_13
 z_respirator2_DUMMY_RESERVE->factory3_13
 z_metal1_DUMMY_RESERVE->factory4_13 z_metal2_DUMMY_RESERVE->factory4_13
 z_plastic1_DUMMY_RESERVE->factory4_13
 z_plastic2_DUMMY_RESERVE->factory4_13
 z_plastic3_DUMMY_RESERVE->factory4_13 z_ppe1_DUMMY_RESERVE->factory4_13
 z_ppe2_DUMMY_RESERVE->factory4_13 z_ppe3_DUMMY_RESERVE->factory4_13
 z_respirator1_DUMMY_RESERVE->factory4_13
 z_respirator2_DUMMY_RESERVE->factory4_13
 z_metal1_DUMMY_RESERVE->hospital1_13 z_metal2_DUMMY_RESERVE->hospital1_13
 z_plastic1_DUMMY_RESERVE->hospital1_13
 z_plastic2_DUMMY_RESERVE->hospital1_13
 z_plastic3_DUMMY_RESERVE->hospital1_13 z_ppe1_DUMMY_RESERVE->hospital1_13
 z_ppe2_DUMMY_RESERVE->hospital1_13 z_ppe3_DUMMY_RESERVE->hospital1_13
 z_respirator1_DUMMY_RESERVE->hospital1_13
 z_respirator2_DUMMY_RESERVE->hospital1_13
 z_metal1_DUMMY_RESERVE->hospital2_13 z_metal2_DUMMY_RESERVE->hospital2_13
 z_plastic1_DUMMY_RESERVE->hospital2_13
 z_plastic2_DUMMY_RESERVE->hospital2_13
 z_plastic3_DUMMY_RESERVE->hospital2_13 z_ppe1_DUMMY_RESERVE->hospital2_13
 z_ppe2_DUMMY_RESERVE->hospital2_13 z_ppe3_DUMMY_RESERVE->hospital2_13
 z_respirator1_DUMMY_RESERVE->hospital2_13
 z_respirator2_DUMMY_RESERVE->hospital2_13
 z_metal1_DUMMY_RESERVE->hospital3_13 z_metal2_DUMMY_RESERVE->hospital3_13
 z_plastic1_DUMMY_RESERVE->hospital3_13
 z_plastic2_DUMMY_RESERVE->hospital3_13
 z_plastic3_DUMMY_RESERVE->hospital3_13 z_ppe1_DUMMY_RESERVE->hospital3_13
 z_ppe2_DUMMY_RESERVE->hospital3_13 z_ppe3_DUMMY_RESERVE->hospital3_13
 z_respirator1_DUMMY_RESERVE->hospital3_13
 z_respirator2_DUMMY_RESERVE->hospital3_13
 z_metal1_DUMMY_RESERVE->hospital4_13 z_metal2_DUMMY_RESERVE->hospital4_13
 z_plastic1_DUMMY_RESERVE->hospital4_13
 z_plastic2_DUMMY_RESERVE->hospital4_13
 z_plastic3_DUMMY_RESERVE->hospital4_13 z_ppe1_DUMMY_RESERVE->hospital4_13
 z_ppe2_DUMMY_RESERVE->hospital4_13 z_ppe3_DUMMY_RESERVE->hospital4_13
 z_respirator1_DUMMY_RESERVE->hospital4_13
 z_respirator2_DUMMY_RESERVE->hospital4_13 z_metal1_factory1->hospital1_14
 z_metal2_factory1->hospital1_14 z_plastic1_factory1->hospital1_14
 z_plastic2_factory1->hospital1_14 z_plastic3_factory1->hospital1_14
 z_ppe1_factory1->hospital1_14 z_ppe2_factory1->hospital1_14
 z_ppe3_factory1->hospital1_14 z_respirator1_factory1->hospital1_14
 z_respirator2_factory1->hospital1_14 z_metal1_factory1->hospital2_14
 z_metal2_factory1->hospital2_14 z_plastic1_factory1->hospital2_14
 z_plastic2_factory1->hospital2_14 z_plastic3_factory1->hospital2_14
 z_ppe1_factory1->hospital2_14 z_ppe2_factory1->hospital2_14
 z_ppe3_factory1->hospital2_14 z_respirator1_factory1->hospital2_14
 z_respirator2_factory1->hospital2_14 z_metal1_factory2->hospital3_14
 z_metal2_factory2->hospital3_14 z_plastic1_factory2->hospital3_14
 z_plastic2_factory2->hospital3_14 z_plastic3_factory2->hospital3_14
 z_ppe1_factory2->hospital3_14 z_ppe2_factory2->hospital3_14
 z_ppe3_factory2->hospital3_14 z_respirator1_factory2->hospital3_14
 z_respirator2_factory2->hospital3_14 z_metal1_factory2->hospital4_14
 z_metal2_factory2->hospital4_14 z_plastic1_factory2->hospital4_14
 z_plastic2_factory2->hospital4_14 z_plastic3_factory2->hospital4_14
 z_ppe1_factory2->hospital4_14 z_ppe2_factory2->hospital4_14
 z_ppe3_factory2->hospital4_14 z_respirator1_factory2->hospital4_14
 z_respirator2_factory2->hospital4_14 z_metal1_factory3->hospital1_14
 z_metal2_factory3->hospital1_14 z_plastic1_factory3->hospital1_14
 z_plastic2_factory3->hospital1_14 z_plastic3_factory3->hospital1_14
 z_ppe1_factory3->hospital1_14 z_ppe2_factory3->hospital1_14
 z_ppe3_factory3->hospital1_14 z_respirator1_factory3->hospital1_14
 z_respirator2_factory3->hospital1_14 z_metal1_factory3->hospital2_14
 z_metal2_factory3->hospital2_14 z_plastic1_factory3->hospital2_14
 z_plastic2_factory3->hospital2_14 z_plastic3_factory3->hospital2_14
 z_ppe1_factory3->hospital2_14 z_ppe2_factory3->hospital2_14
 z_ppe3_factory3->hospital2_14 z_respirator1_factory3->hospital2_14
 z_respirator2_factory3->hospital2_14 z_metal1_factory4->hospital3_14
 z_metal2_factory4->hospital3_14 z_plastic1_factory4->hospital3_14
 z_plastic2_factory4->hospital3_14 z_plastic3_factory4->hospital3_14
 z_ppe1_factory4->hospital3_14 z_ppe2_factory4->hospital3_14
 z_ppe3_factory4->hospital3_14 z_respirator1_factory4->hospital3_14
 z_respirator2_factory4->hospital3_14 z_metal1_factory4->hospital4_14
 z_metal2_factory4->hospital4_14 z_plastic1_factory4->hospital4_14
 z_plastic2_factory4->hospital4_14 z_plastic3_factory4->hospital4_14
 z_ppe1_factory4->hospital4_14 z_ppe2_factory4->hospital4_14
 z_ppe3_factory4->hospital4_14 z_respirator1_factory4->hospital4_14
 z_respirator2_factory4->hospital4_14 z_metal1_factory1->factory4_14
 z_metal2_factory1->factory4_14 z_plastic1_factory1->factory4_14
 z_plastic2_factory1->factory4_14 z_plastic3_factory1->factory4_14
 z_ppe1_factory1->factory4_14 z_ppe2_factory1->factory4_14
 z_ppe3_factory1->factory4_14 z_respirator1_factory1->factory4_14
 z_respirator2_factory1->factory4_14 z_metal1_factory1->factory2_14
 z_metal2_factory1->factory2_14 z_plastic1_factory1->factory2_14
 z_plastic2_factory1->factory2_14 z_plastic3_factory1->factory2_14
 z_ppe1_factory1->factory2_14 z_ppe2_factory1->factory2_14
 z_ppe3_factory1->factory2_14 z_respirator1_factory1->factory2_14
 z_respirator2_factory1->factory2_14 z_metal1_factory4->factory2_14
 z_metal2_factory4->factory2_14 z_plastic1_factory4->factory2_14
 z_plastic2_factory4->factory2_14 z_plastic3_factory4->factory2_14
 z_ppe1_factory4->factory2_14 z_ppe2_factory4->factory2_14
 z_ppe3_factory4->factory2_14 z_respirator1_factory4->factory2_14
 z_respirator2_factory4->factory2_14 z_metal1_hospital1->hospital2_14
 z_metal2_hospital1->hospital2_14 z_plastic1_hospital1->hospital2_14
 z_plastic2_hospital1->hospital2_14 z_plastic3_hospital1->hospital2_14
 z_ppe1_hospital1->hospital2_14 z_ppe2_hospital1->hospital2_14
 z_ppe3_hospital1->hospital2_14 z_respirator1_hospital1->hospital2_14
 z_respirator2_hospital1->hospital2_14 z_metal1_hospita2->hospital3_14
 z_metal2_hospita2->hospital3_14 z_plastic1_hospita2->hospital3_14
 z_plastic2_hospita2->hospital3_14 z_plastic3_hospita2->hospital3_14
 z_ppe1_hospita2->hospital3_14 z_ppe2_hospita2->hospital3_14
 z_ppe3_hospita2->hospital3_14 z_respirator1_hospita2->hospital3_14
 z_respirator2_hospita2->hospital3_14 z_metal1_DUMMY_RESERVE->factory1_14
 z_metal2_DUMMY_RESERVE->factory1_14 z_plastic1_DUMMY_RESERVE->factory1_14
 z_plastic2_DUMMY_RESERVE->factory1_14
 z_plastic3_DUMMY_RESERVE->factory1_14 z_ppe1_DUMMY_RESERVE->factory1_14
 z_ppe2_DUMMY_RESERVE->factory1_14 z_ppe3_DUMMY_RESERVE->factory1_14
 z_respirator1_DUMMY_RESERVE->factory1_14
 z_respirator2_DUMMY_RESERVE->factory1_14
 z_metal1_DUMMY_RESERVE->factory2_14 z_metal2_DUMMY_RESERVE->factory2_14
 z_plastic1_DUMMY_RESERVE->factory2_14
 z_plastic2_DUMMY_RESERVE->factory2_14
 z_plastic3_DUMMY_RESERVE->factory2_14 z_ppe1_DUMMY_RESERVE->factory2_14
 z_ppe2_DUMMY_RESERVE->factory2_14 z_ppe3_DUMMY_RESERVE->factory2_14
 z_respirator1_DUMMY_RESERVE->factory2_14
 z_respirator2_DUMMY_RESERVE->factory2_14
 z_metal1_DUMMY_RESERVE->factory3_14 z_metal2_DUMMY_RESERVE->factory3_14
 z_plastic1_DUMMY_RESERVE->factory3_14
 z_plastic2_DUMMY_RESERVE->factory3_14
 z_plastic3_DUMMY_RESERVE->factory3_14 z_ppe1_DUMMY_RESERVE->factory3_14
 z_ppe2_DUMMY_RESERVE->factory3_14 z_ppe3_DUMMY_RESERVE->factory3_14
 z_respirator1_DUMMY_RESERVE->factory3_14
 z_respirator2_DUMMY_RESERVE->factory3_14
 z_metal1_DUMMY_RESERVE->factory4_14 z_metal2_DUMMY_RESERVE->factory4_14
 z_plastic1_DUMMY_RESERVE->factory4_14
 z_plastic2_DUMMY_RESERVE->factory4_14
 z_plastic3_DUMMY_RESERVE->factory4_14 z_ppe1_DUMMY_RESERVE->factory4_14
 z_ppe2_DUMMY_RESERVE->factory4_14 z_ppe3_DUMMY_RESERVE->factory4_14
 z_respirator1_DUMMY_RESERVE->factory4_14
 z_respirator2_DUMMY_RESERVE->factory4_14
 z_metal1_DUMMY_RESERVE->hospital1_14 z_metal2_DUMMY_RESERVE->hospital1_14
 z_plastic1_DUMMY_RESERVE->hospital1_14
 z_plastic2_DUMMY_RESERVE->hospital1_14
 z_plastic3_DUMMY_RESERVE->hospital1_14 z_ppe1_DUMMY_RESERVE->hospital1_14
 z_ppe2_DUMMY_RESERVE->hospital1_14 z_ppe3_DUMMY_RESERVE->hospital1_14
 z_respirator1_DUMMY_RESERVE->hospital1_14
 z_respirator2_DUMMY_RESERVE->hospital1_14
 z_metal1_DUMMY_RESERVE->hospital2_14 z_metal2_DUMMY_RESERVE->hospital2_14
 z_plastic1_DUMMY_RESERVE->hospital2_14
 z_plastic2_DUMMY_RESERVE->hospital2_14
 z_plastic3_DUMMY_RESERVE->hospital2_14 z_ppe1_DUMMY_RESERVE->hospital2_14
 z_ppe2_DUMMY_RESERVE->hospital2_14 z_ppe3_DUMMY_RESERVE->hospital2_14
 z_respirator1_DUMMY_RESERVE->hospital2_14
 z_respirator2_DUMMY_RESERVE->hospital2_14
 z_metal1_DUMMY_RESERVE->hospital3_14 z_metal2_DUMMY_RESERVE->hospital3_14
 z_plastic1_DUMMY_RESERVE->hospital3_14
 z_plastic2_DUMMY_RESERVE->hospital3_14
 z_plastic3_DUMMY_RESERVE->hospital3_14 z_ppe1_DUMMY_RESERVE->hospital3_14
 z_ppe2_DUMMY_RESERVE->hospital3_14 z_ppe3_DUMMY_RESERVE->hospital3_14
 z_respirator1_DUMMY_RESERVE->hospital3_14
 z_respirator2_DUMMY_RESERVE->hospital3_14
 z_metal1_DUMMY_RESERVE->hospital4_14 z_metal2_DUMMY_RESERVE->hospital4_14
 z_plastic1_DUMMY_RESERVE->hospital4_14
 z_plastic2_DUMMY_RESERVE->hospital4_14
 z_plastic3_DUMMY_RESERVE->hospital4_14 z_ppe1_DUMMY_RESERVE->hospital4_14
 z_ppe2_DUMMY_RESERVE->hospital4_14 z_ppe3_DUMMY_RESERVE->hospital4_14
 z_respirator1_DUMMY_RESERVE->hospital4_14
 z_respirator2_DUMMY_RESERVE->hospital4_14 z_metal1_factory1->hospital1_15
 z_metal2_factory1->hospital1_15 z_plastic1_factory1->hospital1_15
 z_plastic2_factory1->hospital1_15 z_plastic3_factory1->hospital1_15
 z_ppe1_factory1->hospital1_15 z_ppe2_factory1->hospital1_15
 z_ppe3_factory1->hospital1_15 z_respirator1_factory1->hospital1_15
 z_respirator2_factory1->hospital1_15 z_metal1_factory1->hospital2_15
 z_metal2_factory1->hospital2_15 z_plastic1_factory1->hospital2_15
 z_plastic2_factory1->hospital2_15 z_plastic3_factory1->hospital2_15
 z_ppe1_factory1->hospital2_15 z_ppe2_factory1->hospital2_15
 z_ppe3_factory1->hospital2_15 z_respirator1_factory1->hospital2_15
 z_respirator2_factory1->hospital2_15 z_metal1_factory2->hospital3_15
 z_metal2_factory2->hospital3_15 z_plastic1_factory2->hospital3_15
 z_plastic2_factory2->hospital3_15 z_plastic3_factory2->hospital3_15
 z_ppe1_factory2->hospital3_15 z_ppe2_factory2->hospital3_15
 z_ppe3_factory2->hospital3_15 z_respirator1_factory2->hospital3_15
 z_respirator2_factory2->hospital3_15 z_metal1_factory2->hospital4_15
 z_metal2_factory2->hospital4_15 z_plastic1_factory2->hospital4_15
 z_plastic2_factory2->hospital4_15 z_plastic3_factory2->hospital4_15
 z_ppe1_factory2->hospital4_15 z_ppe2_factory2->hospital4_15
 z_ppe3_factory2->hospital4_15 z_respirator1_factory2->hospital4_15
 z_respirator2_factory2->hospital4_15 z_metal1_factory3->hospital1_15
 z_metal2_factory3->hospital1_15 z_plastic1_factory3->hospital1_15
 z_plastic2_factory3->hospital1_15 z_plastic3_factory3->hospital1_15
 z_ppe1_factory3->hospital1_15 z_ppe2_factory3->hospital1_15
 z_ppe3_factory3->hospital1_15 z_respirator1_factory3->hospital1_15
 z_respirator2_factory3->hospital1_15 z_metal1_factory3->hospital2_15
 z_metal2_factory3->hospital2_15 z_plastic1_factory3->hospital2_15
 z_plastic2_factory3->hospital2_15 z_plastic3_factory3->hospital2_15
 z_ppe1_factory3->hospital2_15 z_ppe2_factory3->hospital2_15
 z_ppe3_factory3->hospital2_15 z_respirator1_factory3->hospital2_15
 z_respirator2_factory3->hospital2_15 z_metal1_factory4->hospital3_15
 z_metal2_factory4->hospital3_15 z_plastic1_factory4->hospital3_15
 z_plastic2_factory4->hospital3_15 z_plastic3_factory4->hospital3_15
 z_ppe1_factory4->hospital3_15 z_ppe2_factory4->hospital3_15
 z_ppe3_factory4->hospital3_15 z_respirator1_factory4->hospital3_15
 z_respirator2_factory4->hospital3_15 z_metal1_factory4->hospital4_15
 z_metal2_factory4->hospital4_15 z_plastic1_factory4->hospital4_15
 z_plastic2_factory4->hospital4_15 z_plastic3_factory4->hospital4_15
 z_ppe1_factory4->hospital4_15 z_ppe2_factory4->hospital4_15
 z_ppe3_factory4->hospital4_15 z_respirator1_factory4->hospital4_15
 z_respirator2_factory4->hospital4_15 z_metal1_factory1->factory4_15
 z_metal2_factory1->factory4_15 z_plastic1_factory1->factory4_15
 z_plastic2_factory1->factory4_15 z_plastic3_factory1->factory4_15
 z_ppe1_factory1->factory4_15 z_ppe2_factory1->factory4_15
 z_ppe3_factory1->factory4_15 z_respirator1_factory1->factory4_15
 z_respirator2_factory1->factory4_15 z_metal1_factory1->factory2_15
 z_metal2_factory1->factory2_15 z_plastic1_factory1->factory2_15
 z_plastic2_factory1->factory2_15 z_plastic3_factory1->factory2_15
 z_ppe1_factory1->factory2_15 z_ppe2_factory1->factory2_15
 z_ppe3_factory1->factory2_15 z_respirator1_factory1->factory2_15
 z_respirator2_factory1->factory2_15 z_metal1_factory4->factory2_15
 z_metal2_factory4->factory2_15 z_plastic1_factory4->factory2_15
 z_plastic2_factory4->factory2_15 z_plastic3_factory4->factory2_15
 z_ppe1_factory4->factory2_15 z_ppe2_factory4->factory2_15
 z_ppe3_factory4->factory2_15 z_respirator1_factory4->factory2_15
 z_respirator2_factory4->factory2_15 z_metal1_hospital1->hospital2_15
 z_metal2_hospital1->hospital2_15 z_plastic1_hospital1->hospital2_15
 z_plastic2_hospital1->hospital2_15 z_plastic3_hospital1->hospital2_15
 z_ppe1_hospital1->hospital2_15 z_ppe2_hospital1->hospital2_15
 z_ppe3_hospital1->hospital2_15 z_respirator1_hospital1->hospital2_15
 z_respirator2_hospital1->hospital2_15 z_metal1_hospita2->hospital3_15
 z_metal2_hospita2->hospital3_15 z_plastic1_hospita2->hospital3_15
 z_plastic2_hospita2->hospital3_15 z_plastic3_hospita2->hospital3_15
 z_ppe1_hospita2->hospital3_15 z_ppe2_hospita2->hospital3_15
 z_ppe3_hospita2->hospital3_15 z_respirator1_hospita2->hospital3_15
 z_respirator2_hospita2->hospital3_15 z_metal1_DUMMY_RESERVE->factory1_15
 z_metal2_DUMMY_RESERVE->factory1_15 z_plastic1_DUMMY_RESERVE->factory1_15
 z_plastic2_DUMMY_RESERVE->factory1_15
 z_plastic3_DUMMY_RESERVE->factory1_15 z_ppe1_DUMMY_RESERVE->factory1_15
 z_ppe2_DUMMY_RESERVE->factory1_15 z_ppe3_DUMMY_RESERVE->factory1_15
 z_respirator1_DUMMY_RESERVE->factory1_15
 z_respirator2_DUMMY_RESERVE->factory1_15
 z_metal1_DUMMY_RESERVE->factory2_15 z_metal2_DUMMY_RESERVE->factory2_15
 z_plastic1_DUMMY_RESERVE->factory2_15
 z_plastic2_DUMMY_RESERVE->factory2_15
 z_plastic3_DUMMY_RESERVE->factory2_15 z_ppe1_DUMMY_RESERVE->factory2_15
 z_ppe2_DUMMY_RESERVE->factory2_15 z_ppe3_DUMMY_RESERVE->factory2_15
 z_respirator1_DUMMY_RESERVE->factory2_15
 z_respirator2_DUMMY_RESERVE->factory2_15
 z_metal1_DUMMY_RESERVE->factory3_15 z_metal2_DUMMY_RESERVE->factory3_15
 z_plastic1_DUMMY_RESERVE->factory3_15
 z_plastic2_DUMMY_RESERVE->factory3_15
 z_plastic3_DUMMY_RESERVE->factory3_15 z_ppe1_DUMMY_RESERVE->factory3_15
 z_ppe2_DUMMY_RESERVE->factory3_15 z_ppe3_DUMMY_RESERVE->factory3_15
 z_respirator1_DUMMY_RESERVE->factory3_15
 z_respirator2_DUMMY_RESERVE->factory3_15
 z_metal1_DUMMY_RESERVE->factory4_15 z_metal2_DUMMY_RESERVE->factory4_15
 z_plastic1_DUMMY_RESERVE->factory4_15
 z_plastic2_DUMMY_RESERVE->factory4_15
 z_plastic3_DUMMY_RESERVE->factory4_15 z_ppe1_DUMMY_RESERVE->factory4_15
 z_ppe2_DUMMY_RESERVE->factory4_15 z_ppe3_DUMMY_RESERVE->factory4_15
 z_respirator1_DUMMY_RESERVE->factory4_15
 z_respirator2_DUMMY_RESERVE->factory4_15
 z_metal1_DUMMY_RESERVE->hospital1_15 z_metal2_DUMMY_RESERVE->hospital1_15
 z_plastic1_DUMMY_RESERVE->hospital1_15
 z_plastic2_DUMMY_RESERVE->hospital1_15
 z_plastic3_DUMMY_RESERVE->hospital1_15 z_ppe1_DUMMY_RESERVE->hospital1_15
 z_ppe2_DUMMY_RESERVE->hospital1_15 z_ppe3_DUMMY_RESERVE->hospital1_15
 z_respirator1_DUMMY_RESERVE->hospital1_15
 z_respirator2_DUMMY_RESERVE->hospital1_15
 z_metal1_DUMMY_RESERVE->hospital2_15 z_metal2_DUMMY_RESERVE->hospital2_15
 z_plastic1_DUMMY_RESERVE->hospital2_15
 z_plastic2_DUMMY_RESERVE->hospital2_15
 z_plastic3_DUMMY_RESERVE->hospital2_15 z_ppe1_DUMMY_RESERVE->hospital2_15
 z_ppe2_DUMMY_RESERVE->hospital2_15 z_ppe3_DUMMY_RESERVE->hospital2_15
 z_respirator1_DUMMY_RESERVE->hospital2_15
 z_respirator2_DUMMY_RESERVE->hospital2_15
 z_metal1_DUMMY_RESERVE->hospital3_15 z_metal2_DUMMY_RESERVE->hospital3_15
 z_plastic1_DUMMY_RESERVE->hospital3_15
 z_plastic2_DUMMY_RESERVE->hospital3_15
 z_plastic3_DUMMY_RESERVE->hospital3_15 z_ppe1_DUMMY_RESERVE->hospital3_15
 z_ppe2_DUMMY_RESERVE->hospital3_15 z_ppe3_DUMMY_RESERVE->hospital3_15
 z_respirator1_DUMMY_RESERVE->hospital3_15
 z_respirator2_DUMMY_RESERVE->hospital3_15
 z_metal1_DUMMY_RESERVE->hospital4_15 z_metal2_DUMMY_RESERVE->hospital4_15
 z_plastic1_DUMMY_RESERVE->hospital4_15
 z_plastic2_DUMMY_RESERVE->hospital4_15
 z_plastic3_DUMMY_RESERVE->hospital4_15 z_ppe1_DUMMY_RESERVE->hospital4_15
 z_ppe2_DUMMY_RESERVE->hospital4_15 z_ppe3_DUMMY_RESERVE->hospital4_15
 z_respirator1_DUMMY_RESERVE->hospital4_15
 z_respirator2_DUMMY_RESERVE->hospital4_15 z_metal1_factory1->hospital1_16
 z_metal2_factory1->hospital1_16 z_plastic1_factory1->hospital1_16
 z_plastic2_factory1->hospital1_16 z_plastic3_factory1->hospital1_16
 z_ppe1_factory1->hospital1_16 z_ppe2_factory1->hospital1_16
 z_ppe3_factory1->hospital1_16 z_respirator1_factory1->hospital1_16
 z_respirator2_factory1->hospital1_16 z_metal1_factory1->hospital2_16
 z_metal2_factory1->hospital2_16 z_plastic1_factory1->hospital2_16
 z_plastic2_factory1->hospital2_16 z_plastic3_factory1->hospital2_16
 z_ppe1_factory1->hospital2_16 z_ppe2_factory1->hospital2_16
 z_ppe3_factory1->hospital2_16 z_respirator1_factory1->hospital2_16
 z_respirator2_factory1->hospital2_16 z_metal1_factory2->hospital3_16
 z_metal2_factory2->hospital3_16 z_plastic1_factory2->hospital3_16
 z_plastic2_factory2->hospital3_16 z_plastic3_factory2->hospital3_16
 z_ppe1_factory2->hospital3_16 z_ppe2_factory2->hospital3_16
 z_ppe3_factory2->hospital3_16 z_respirator1_factory2->hospital3_16
 z_respirator2_factory2->hospital3_16 z_metal1_factory2->hospital4_16
 z_metal2_factory2->hospital4_16 z_plastic1_factory2->hospital4_16
 z_plastic2_factory2->hospital4_16 z_plastic3_factory2->hospital4_16
 z_ppe1_factory2->hospital4_16 z_ppe2_factory2->hospital4_16
 z_ppe3_factory2->hospital4_16 z_respirator1_factory2->hospital4_16
 z_respirator2_factory2->hospital4_16 z_metal1_factory3->hospital1_16
 z_metal2_factory3->hospital1_16 z_plastic1_factory3->hospital1_16
 z_plastic2_factory3->hospital1_16 z_plastic3_factory3->hospital1_16
 z_ppe1_factory3->hospital1_16 z_ppe2_factory3->hospital1_16
 z_ppe3_factory3->hospital1_16 z_respirator1_factory3->hospital1_16
 z_respirator2_factory3->hospital1_16 z_metal1_factory3->hospital2_16
 z_metal2_factory3->hospital2_16 z_plastic1_factory3->hospital2_16
 z_plastic2_factory3->hospital2_16 z_plastic3_factory3->hospital2_16
 z_ppe1_factory3->hospital2_16 z_ppe2_factory3->hospital2_16
 z_ppe3_factory3->hospital2_16 z_respirator1_factory3->hospital2_16
 z_respirator2_factory3->hospital2_16 z_metal1_factory4->hospital3_16
 z_metal2_factory4->hospital3_16 z_plastic1_factory4->hospital3_16
 z_plastic2_factory4->hospital3_16 z_plastic3_factory4->hospital3_16
 z_ppe1_factory4->hospital3_16 z_ppe2_factory4->hospital3_16
 z_ppe3_factory4->hospital3_16 z_respirator1_factory4->hospital3_16
 z_respirator2_factory4->hospital3_16 z_metal1_factory4->hospital4_16
 z_metal2_factory4->hospital4_16 z_plastic1_factory4->hospital4_16
 z_plastic2_factory4->hospital4_16 z_plastic3_factory4->hospital4_16
 z_ppe1_factory4->hospital4_16 z_ppe2_factory4->hospital4_16
 z_ppe3_factory4->hospital4_16 z_respirator1_factory4->hospital4_16
 z_respirator2_factory4->hospital4_16 z_metal1_factory1->factory4_16
 z_metal2_factory1->factory4_16 z_plastic1_factory1->factory4_16
 z_plastic2_factory1->factory4_16 z_plastic3_factory1->factory4_16
 z_ppe1_factory1->factory4_16 z_ppe2_factory1->factory4_16
 z_ppe3_factory1->factory4_16 z_respirator1_factory1->factory4_16
 z_respirator2_factory1->factory4_16 z_metal1_factory1->factory2_16
 z_metal2_factory1->factory2_16 z_plastic1_factory1->factory2_16
 z_plastic2_factory1->factory2_16 z_plastic3_factory1->factory2_16
 z_ppe1_factory1->factory2_16 z_ppe2_factory1->factory2_16
 z_ppe3_factory1->factory2_16 z_respirator1_factory1->factory2_16
 z_respirator2_factory1->factory2_16 z_metal1_factory4->factory2_16
 z_metal2_factory4->factory2_16 z_plastic1_factory4->factory2_16
 z_plastic2_factory4->factory2_16 z_plastic3_factory4->factory2_16
 z_ppe1_factory4->factory2_16 z_ppe2_factory4->factory2_16
 z_ppe3_factory4->factory2_16 z_respirator1_factory4->factory2_16
 z_respirator2_factory4->factory2_16 z_metal1_hospital1->hospital2_16
 z_metal2_hospital1->hospital2_16 z_plastic1_hospital1->hospital2_16
 z_plastic2_hospital1->hospital2_16 z_plastic3_hospital1->hospital2_16
 z_ppe1_hospital1->hospital2_16 z_ppe2_hospital1->hospital2_16
 z_ppe3_hospital1->hospital2_16 z_respirator1_hospital1->hospital2_16
 z_respirator2_hospital1->hospital2_16 z_metal1_hospita2->hospital3_16
 z_metal2_hospita2->hospital3_16 z_plastic1_hospita2->hospital3_16
 z_plastic2_hospita2->hospital3_16 z_plastic3_hospita2->hospital3_16
 z_ppe1_hospita2->hospital3_16 z_ppe2_hospita2->hospital3_16
 z_ppe3_hospita2->hospital3_16 z_respirator1_hospita2->hospital3_16
 z_respirator2_hospita2->hospital3_16 z_metal1_DUMMY_RESERVE->factory1_16
 z_metal2_DUMMY_RESERVE->factory1_16 z_plastic1_DUMMY_RESERVE->factory1_16
 z_plastic2_DUMMY_RESERVE->factory1_16
 z_plastic3_DUMMY_RESERVE->factory1_16 z_ppe1_DUMMY_RESERVE->factory1_16
 z_ppe2_DUMMY_RESERVE->factory1_16 z_ppe3_DUMMY_RESERVE->factory1_16
 z_respirator1_DUMMY_RESERVE->factory1_16
 z_respirator2_DUMMY_RESERVE->factory1_16
 z_metal1_DUMMY_RESERVE->factory2_16 z_metal2_DUMMY_RESERVE->factory2_16
 z_plastic1_DUMMY_RESERVE->factory2_16
 z_plastic2_DUMMY_RESERVE->factory2_16
 z_plastic3_DUMMY_RESERVE->factory2_16 z_ppe1_DUMMY_RESERVE->factory2_16
 z_ppe2_DUMMY_RESERVE->factory2_16 z_ppe3_DUMMY_RESERVE->factory2_16
 z_respirator1_DUMMY_RESERVE->factory2_16
 z_respirator2_DUMMY_RESERVE->factory2_16
 z_metal1_DUMMY_RESERVE->factory3_16 z_metal2_DUMMY_RESERVE->factory3_16
 z_plastic1_DUMMY_RESERVE->factory3_16
 z_plastic2_DUMMY_RESERVE->factory3_16
 z_plastic3_DUMMY_RESERVE->factory3_16 z_ppe1_DUMMY_RESERVE->factory3_16
 z_ppe2_DUMMY_RESERVE->factory3_16 z_ppe3_DUMMY_RESERVE->factory3_16
 z_respirator1_DUMMY_RESERVE->factory3_16
 z_respirator2_DUMMY_RESERVE->factory3_16
 z_metal1_DUMMY_RESERVE->factory4_16 z_metal2_DUMMY_RESERVE->factory4_16
 z_plastic1_DUMMY_RESERVE->factory4_16
 z_plastic2_DUMMY_RESERVE->factory4_16
 z_plastic3_DUMMY_RESERVE->factory4_16 z_ppe1_DUMMY_RESERVE->factory4_16
 z_ppe2_DUMMY_RESERVE->factory4_16 z_ppe3_DUMMY_RESERVE->factory4_16
 z_respirator1_DUMMY_RESERVE->factory4_16
 z_respirator2_DUMMY_RESERVE->factory4_16
 z_metal1_DUMMY_RESERVE->hospital1_16 z_metal2_DUMMY_RESERVE->hospital1_16
 z_plastic1_DUMMY_RESERVE->hospital1_16
 z_plastic2_DUMMY_RESERVE->hospital1_16
 z_plastic3_DUMMY_RESERVE->hospital1_16 z_ppe1_DUMMY_RESERVE->hospital1_16
 z_ppe2_DUMMY_RESERVE->hospital1_16 z_ppe3_DUMMY_RESERVE->hospital1_16
 z_respirator1_DUMMY_RESERVE->hospital1_16
 z_respirator2_DUMMY_RESERVE->hospital1_16
 z_metal1_DUMMY_RESERVE->hospital2_16 z_metal2_DUMMY_RESERVE->hospital2_16
 z_plastic1_DUMMY_RESERVE->hospital2_16
 z_plastic2_DUMMY_RESERVE->hospital2_16
 z_plastic3_DUMMY_RESERVE->hospital2_16 z_ppe1_DUMMY_RESERVE->hospital2_16
 z_ppe2_DUMMY_RESERVE->hospital2_16 z_ppe3_DUMMY_RESERVE->hospital2_16
 z_respirator1_DUMMY_RESERVE->hospital2_16
 z_respirator2_DUMMY_RESERVE->hospital2_16
 z_metal1_DUMMY_RESERVE->hospital3_16 z_metal2_DUMMY_RESERVE->hospital3_16
 z_plastic1_DUMMY_RESERVE->hospital3_16
 z_plastic2_DUMMY_RESERVE->hospital3_16
 z_plastic3_DUMMY_RESERVE->hospital3_16 z_ppe1_DUMMY_RESERVE->hospital3_16
 z_ppe2_DUMMY_RESERVE->hospital3_16 z_ppe3_DUMMY_RESERVE->hospital3_16
 z_respirator1_DUMMY_RESERVE->hospital3_16
 z_respirator2_DUMMY_RESERVE->hospital3_16
 z_metal1_DUMMY_RESERVE->hospital4_16 z_metal2_DUMMY_RESERVE->hospital4_16
 z_plastic1_DUMMY_RESERVE->hospital4_16
 z_plastic2_DUMMY_RESERVE->hospital4_16
 z_plastic3_DUMMY_RESERVE->hospital4_16 z_ppe1_DUMMY_RESERVE->hospital4_16
 z_ppe2_DUMMY_RESERVE->hospital4_16 z_ppe3_DUMMY_RESERVE->hospital4_16
 z_respirator1_DUMMY_RESERVE->hospital4_16
 z_respirator2_DUMMY_RESERVE->hospital4_16 z_metal1_factory1->hospital1_17
 z_metal2_factory1->hospital1_17 z_plastic1_factory1->hospital1_17
 z_plastic2_factory1->hospital1_17 z_plastic3_factory1->hospital1_17
 z_ppe1_factory1->hospital1_17 z_ppe2_factory1->hospital1_17
 z_ppe3_factory1->hospital1_17 z_respirator1_factory1->hospital1_17
 z_respirator2_factory1->hospital1_17 z_metal1_factory1->hospital2_17
 z_metal2_factory1->hospital2_17 z_plastic1_factory1->hospital2_17
 z_plastic2_factory1->hospital2_17 z_plastic3_factory1->hospital2_17
 z_ppe1_factory1->hospital2_17 z_ppe2_factory1->hospital2_17
 z_ppe3_factory1->hospital2_17 z_respirator1_factory1->hospital2_17
 z_respirator2_factory1->hospital2_17 z_metal1_factory2->hospital3_17
 z_metal2_factory2->hospital3_17 z_plastic1_factory2->hospital3_17
 z_plastic2_factory2->hospital3_17 z_plastic3_factory2->hospital3_17
 z_ppe1_factory2->hospital3_17 z_ppe2_factory2->hospital3_17
 z_ppe3_factory2->hospital3_17 z_respirator1_factory2->hospital3_17
 z_respirator2_factory2->hospital3_17 z_metal1_factory2->hospital4_17
 z_metal2_factory2->hospital4_17 z_plastic1_factory2->hospital4_17
 z_plastic2_factory2->hospital4_17 z_plastic3_factory2->hospital4_17
 z_ppe1_factory2->hospital4_17 z_ppe2_factory2->hospital4_17
 z_ppe3_factory2->hospital4_17 z_respirator1_factory2->hospital4_17
 z_respirator2_factory2->hospital4_17 z_metal1_factory3->hospital1_17
 z_metal2_factory3->hospital1_17 z_plastic1_factory3->hospital1_17
 z_plastic2_factory3->hospital1_17 z_plastic3_factory3->hospital1_17
 z_ppe1_factory3->hospital1_17 z_ppe2_factory3->hospital1_17
 z_ppe3_factory3->hospital1_17 z_respirator1_factory3->hospital1_17
 z_respirator2_factory3->hospital1_17 z_metal1_factory3->hospital2_17
 z_metal2_factory3->hospital2_17 z_plastic1_factory3->hospital2_17
 z_plastic2_factory3->hospital2_17 z_plastic3_factory3->hospital2_17
 z_ppe1_factory3->hospital2_17 z_ppe2_factory3->hospital2_17
 z_ppe3_factory3->hospital2_17 z_respirator1_factory3->hospital2_17
 z_respirator2_factory3->hospital2_17 z_metal1_factory4->hospital3_17
 z_metal2_factory4->hospital3_17 z_plastic1_factory4->hospital3_17
 z_plastic2_factory4->hospital3_17 z_plastic3_factory4->hospital3_17
 z_ppe1_factory4->hospital3_17 z_ppe2_factory4->hospital3_17
 z_ppe3_factory4->hospital3_17 z_respirator1_factory4->hospital3_17
 z_respirator2_factory4->hospital3_17 z_metal1_factory4->hospital4_17
 z_metal2_factory4->hospital4_17 z_plastic1_factory4->hospital4_17
 z_plastic2_factory4->hospital4_17 z_plastic3_factory4->hospital4_17
 z_ppe1_factory4->hospital4_17 z_ppe2_factory4->hospital4_17
 z_ppe3_factory4->hospital4_17 z_respirator1_factory4->hospital4_17
 z_respirator2_factory4->hospital4_17 z_metal1_factory1->factory4_17
 z_metal2_factory1->factory4_17 z_plastic1_factory1->factory4_17
 z_plastic2_factory1->factory4_17 z_plastic3_factory1->factory4_17
 z_ppe1_factory1->factory4_17 z_ppe2_factory1->factory4_17
 z_ppe3_factory1->factory4_17 z_respirator1_factory1->factory4_17
 z_respirator2_factory1->factory4_17 z_metal1_factory1->factory2_17
 z_metal2_factory1->factory2_17 z_plastic1_factory1->factory2_17
 z_plastic2_factory1->factory2_17 z_plastic3_factory1->factory2_17
 z_ppe1_factory1->factory2_17 z_ppe2_factory1->factory2_17
 z_ppe3_factory1->factory2_17 z_respirator1_factory1->factory2_17
 z_respirator2_factory1->factory2_17 z_metal1_factory4->factory2_17
 z_metal2_factory4->factory2_17 z_plastic1_factory4->factory2_17
 z_plastic2_factory4->factory2_17 z_plastic3_factory4->factory2_17
 z_ppe1_factory4->factory2_17 z_ppe2_factory4->factory2_17
 z_ppe3_factory4->factory2_17 z_respirator1_factory4->factory2_17
 z_respirator2_factory4->factory2_17 z_metal1_hospital1->hospital2_17
 z_metal2_hospital1->hospital2_17 z_plastic1_hospital1->hospital2_17
 z_plastic2_hospital1->hospital2_17 z_plastic3_hospital1->hospital2_17
 z_ppe1_hospital1->hospital2_17 z_ppe2_hospital1->hospital2_17
 z_ppe3_hospital1->hospital2_17 z_respirator1_hospital1->hospital2_17
 z_respirator2_hospital1->hospital2_17 z_metal1_hospita2->hospital3_17
 z_metal2_hospita2->hospital3_17 z_plastic1_hospita2->hospital3_17
 z_plastic2_hospita2->hospital3_17 z_plastic3_hospita2->hospital3_17
 z_ppe1_hospita2->hospital3_17 z_ppe2_hospita2->hospital3_17
 z_ppe3_hospita2->hospital3_17 z_respirator1_hospita2->hospital3_17
 z_respirator2_hospita2->hospital3_17 z_metal1_DUMMY_RESERVE->factory1_17
 z_metal2_DUMMY_RESERVE->factory1_17 z_plastic1_DUMMY_RESERVE->factory1_17
 z_plastic2_DUMMY_RESERVE->factory1_17
 z_plastic3_DUMMY_RESERVE->factory1_17 z_ppe1_DUMMY_RESERVE->factory1_17
 z_ppe2_DUMMY_RESERVE->factory1_17 z_ppe3_DUMMY_RESERVE->factory1_17
 z_respirator1_DUMMY_RESERVE->factory1_17
 z_respirator2_DUMMY_RESERVE->factory1_17
 z_metal1_DUMMY_RESERVE->factory2_17 z_metal2_DUMMY_RESERVE->factory2_17
 z_plastic1_DUMMY_RESERVE->factory2_17
 z_plastic2_DUMMY_RESERVE->factory2_17
 z_plastic3_DUMMY_RESERVE->factory2_17 z_ppe1_DUMMY_RESERVE->factory2_17
 z_ppe2_DUMMY_RESERVE->factory2_17 z_ppe3_DUMMY_RESERVE->factory2_17
 z_respirator1_DUMMY_RESERVE->factory2_17
 z_respirator2_DUMMY_RESERVE->factory2_17
 z_metal1_DUMMY_RESERVE->factory3_17 z_metal2_DUMMY_RESERVE->factory3_17
 z_plastic1_DUMMY_RESERVE->factory3_17
 z_plastic2_DUMMY_RESERVE->factory3_17
 z_plastic3_DUMMY_RESERVE->factory3_17 z_ppe1_DUMMY_RESERVE->factory3_17
 z_ppe2_DUMMY_RESERVE->factory3_17 z_ppe3_DUMMY_RESERVE->factory3_17
 z_respirator1_DUMMY_RESERVE->factory3_17
 z_respirator2_DUMMY_RESERVE->factory3_17
 z_metal1_DUMMY_RESERVE->factory4_17 z_metal2_DUMMY_RESERVE->factory4_17
 z_plastic1_DUMMY_RESERVE->factory4_17
 z_plastic2_DUMMY_RESERVE->factory4_17
 z_plastic3_DUMMY_RESERVE->factory4_17 z_ppe1_DUMMY_RESERVE->factory4_17
 z_ppe2_DUMMY_RESERVE->factory4_17 z_ppe3_DUMMY_RESERVE->factory4_17
 z_respirator1_DUMMY_RESERVE->factory4_17
 z_respirator2_DUMMY_RESERVE->factory4_17
 z_metal1_DUMMY_RESERVE->hospital1_17 z_metal2_DUMMY_RESERVE->hospital1_17
 z_plastic1_DUMMY_RESERVE->hospital1_17
 z_plastic2_DUMMY_RESERVE->hospital1_17
 z_plastic3_DUMMY_RESERVE->hospital1_17 z_ppe1_DUMMY_RESERVE->hospital1_17
 z_ppe2_DUMMY_RESERVE->hospital1_17 z_ppe3_DUMMY_RESERVE->hospital1_17
 z_respirator1_DUMMY_RESERVE->hospital1_17
 z_respirator2_DUMMY_RESERVE->hospital1_17
 z_metal1_DUMMY_RESERVE->hospital2_17 z_metal2_DUMMY_RESERVE->hospital2_17
 z_plastic1_DUMMY_RESERVE->hospital2_17
 z_plastic2_DUMMY_RESERVE->hospital2_17
 z_plastic3_DUMMY_RESERVE->hospital2_17 z_ppe1_DUMMY_RESERVE->hospital2_17
 z_ppe2_DUMMY_RESERVE->hospital2_17 z_ppe3_DUMMY_RESERVE->hospital2_17
 z_respirator1_DUMMY_RESERVE->hospital2_17
 z_respirator2_DUMMY_RESERVE->hospital2_17
 z_metal1_DUMMY_RESERVE->hospital3_17 z_metal2_DUMMY_RESERVE->hospital3_17
 z_plastic1_DUMMY_RESERVE->hospital3_17
 z_plastic2_DUMMY_RESERVE->hospital3_17
 z_plastic3_DUMMY_RESERVE->hospital3_17 z_ppe1_DUMMY_RESERVE->hospital3_17
 z_ppe2_DUMMY_RESERVE->hospital3_17 z_ppe3_DUMMY_RESERVE->hospital3_17
 z_respirator1_DUMMY_RESERVE->hospital3_17
 z_respirator2_DUMMY_RESERVE->hospital3_17
 z_metal1_DUMMY_RESERVE->hospital4_17 z_metal2_DUMMY_RESERVE->hospital4_17
 z_plastic1_DUMMY_RESERVE->hospital4_17
 z_plastic2_DUMMY_RESERVE->hospital4_17
 z_plastic3_DUMMY_RESERVE->hospital4_17 z_ppe1_DUMMY_RESERVE->hospital4_17
 z_ppe2_DUMMY_RESERVE->hospital4_17 z_ppe3_DUMMY_RESERVE->hospital4_17
 z_respirator1_DUMMY_RESERVE->hospital4_17
 z_respirator2_DUMMY_RESERVE->hospital4_17 z_metal1_factory1->hospital1_18
 z_metal2_factory1->hospital1_18 z_plastic1_factory1->hospital1_18
 z_plastic2_factory1->hospital1_18 z_plastic3_factory1->hospital1_18
 z_ppe1_factory1->hospital1_18 z_ppe2_factory1->hospital1_18
 z_ppe3_factory1->hospital1_18 z_respirator1_factory1->hospital1_18
 z_respirator2_factory1->hospital1_18 z_metal1_factory1->hospital2_18
 z_metal2_factory1->hospital2_18 z_plastic1_factory1->hospital2_18
 z_plastic2_factory1->hospital2_18 z_plastic3_factory1->hospital2_18
 z_ppe1_factory1->hospital2_18 z_ppe2_factory1->hospital2_18
 z_ppe3_factory1->hospital2_18 z_respirator1_factory1->hospital2_18
 z_respirator2_factory1->hospital2_18 z_metal1_factory2->hospital3_18
 z_metal2_factory2->hospital3_18 z_plastic1_factory2->hospital3_18
 z_plastic2_factory2->hospital3_18 z_plastic3_factory2->hospital3_18
 z_ppe1_factory2->hospital3_18 z_ppe2_factory2->hospital3_18
 z_ppe3_factory2->hospital3_18 z_respirator1_factory2->hospital3_18
 z_respirator2_factory2->hospital3_18 z_metal1_factory2->hospital4_18
 z_metal2_factory2->hospital4_18 z_plastic1_factory2->hospital4_18
 z_plastic2_factory2->hospital4_18 z_plastic3_factory2->hospital4_18
 z_ppe1_factory2->hospital4_18 z_ppe2_factory2->hospital4_18
 z_ppe3_factory2->hospital4_18 z_respirator1_factory2->hospital4_18
 z_respirator2_factory2->hospital4_18 z_metal1_factory3->hospital1_18
 z_metal2_factory3->hospital1_18 z_plastic1_factory3->hospital1_18
 z_plastic2_factory3->hospital1_18 z_plastic3_factory3->hospital1_18
 z_ppe1_factory3->hospital1_18 z_ppe2_factory3->hospital1_18
 z_ppe3_factory3->hospital1_18 z_respirator1_factory3->hospital1_18
 z_respirator2_factory3->hospital1_18 z_metal1_factory3->hospital2_18
 z_metal2_factory3->hospital2_18 z_plastic1_factory3->hospital2_18
 z_plastic2_factory3->hospital2_18 z_plastic3_factory3->hospital2_18
 z_ppe1_factory3->hospital2_18 z_ppe2_factory3->hospital2_18
 z_ppe3_factory3->hospital2_18 z_respirator1_factory3->hospital2_18
 z_respirator2_factory3->hospital2_18 z_metal1_factory4->hospital3_18
 z_metal2_factory4->hospital3_18 z_plastic1_factory4->hospital3_18
 z_plastic2_factory4->hospital3_18 z_plastic3_factory4->hospital3_18
 z_ppe1_factory4->hospital3_18 z_ppe2_factory4->hospital3_18
 z_ppe3_factory4->hospital3_18 z_respirator1_factory4->hospital3_18
 z_respirator2_factory4->hospital3_18 z_metal1_factory4->hospital4_18
 z_metal2_factory4->hospital4_18 z_plastic1_factory4->hospital4_18
 z_plastic2_factory4->hospital4_18 z_plastic3_factory4->hospital4_18
 z_ppe1_factory4->hospital4_18 z_ppe2_factory4->hospital4_18
 z_ppe3_factory4->hospital4_18 z_respirator1_factory4->hospital4_18
 z_respirator2_factory4->hospital4_18 z_metal1_factory1->factory4_18
 z_metal2_factory1->factory4_18 z_plastic1_factory1->factory4_18
 z_plastic2_factory1->factory4_18 z_plastic3_factory1->factory4_18
 z_ppe1_factory1->factory4_18 z_ppe2_factory1->factory4_18
 z_ppe3_factory1->factory4_18 z_respirator1_factory1->factory4_18
 z_respirator2_factory1->factory4_18 z_metal1_factory1->factory2_18
 z_metal2_factory1->factory2_18 z_plastic1_factory1->factory2_18
 z_plastic2_factory1->factory2_18 z_plastic3_factory1->factory2_18
 z_ppe1_factory1->factory2_18 z_ppe2_factory1->factory2_18
 z_ppe3_factory1->factory2_18 z_respirator1_factory1->factory2_18
 z_respirator2_factory1->factory2_18 z_metal1_factory4->factory2_18
 z_metal2_factory4->factory2_18 z_plastic1_factory4->factory2_18
 z_plastic2_factory4->factory2_18 z_plastic3_factory4->factory2_18
 z_ppe1_factory4->factory2_18 z_ppe2_factory4->factory2_18
 z_ppe3_factory4->factory2_18 z_respirator1_factory4->factory2_18
 z_respirator2_factory4->factory2_18 z_metal1_hospital1->hospital2_18
 z_metal2_hospital1->hospital2_18 z_plastic1_hospital1->hospital2_18
 z_plastic2_hospital1->hospital2_18 z_plastic3_hospital1->hospital2_18
 z_ppe1_hospital1->hospital2_18 z_ppe2_hospital1->hospital2_18
 z_ppe3_hospital1->hospital2_18 z_respirator1_hospital1->hospital2_18
 z_respirator2_hospital1->hospital2_18 z_metal1_hospita2->hospital3_18
 z_metal2_hospita2->hospital3_18 z_plastic1_hospita2->hospital3_18
 z_plastic2_hospita2->hospital3_18 z_plastic3_hospita2->hospital3_18
 z_ppe1_hospita2->hospital3_18 z_ppe2_hospita2->hospital3_18
 z_ppe3_hospita2->hospital3_18 z_respirator1_hospita2->hospital3_18
 z_respirator2_hospita2->hospital3_18 z_metal1_DUMMY_RESERVE->factory1_18
 z_metal2_DUMMY_RESERVE->factory1_18 z_plastic1_DUMMY_RESERVE->factory1_18
 z_plastic2_DUMMY_RESERVE->factory1_18
 z_plastic3_DUMMY_RESERVE->factory1_18 z_ppe1_DUMMY_RESERVE->factory1_18
 z_ppe2_DUMMY_RESERVE->factory1_18 z_ppe3_DUMMY_RESERVE->factory1_18
 z_respirator1_DUMMY_RESERVE->factory1_18
 z_respirator2_DUMMY_RESERVE->factory1_18
 z_metal1_DUMMY_RESERVE->factory2_18 z_metal2_DUMMY_RESERVE->factory2_18
 z_plastic1_DUMMY_RESERVE->factory2_18
 z_plastic2_DUMMY_RESERVE->factory2_18
 z_plastic3_DUMMY_RESERVE->factory2_18 z_ppe1_DUMMY_RESERVE->factory2_18
 z_ppe2_DUMMY_RESERVE->factory2_18 z_ppe3_DUMMY_RESERVE->factory2_18
 z_respirator1_DUMMY_RESERVE->factory2_18
 z_respirator2_DUMMY_RESERVE->factory2_18
 z_metal1_DUMMY_RESERVE->factory3_18 z_metal2_DUMMY_RESERVE->factory3_18
 z_plastic1_DUMMY_RESERVE->factory3_18
 z_plastic2_DUMMY_RESERVE->factory3_18
 z_plastic3_DUMMY_RESERVE->factory3_18 z_ppe1_DUMMY_RESERVE->factory3_18
 z_ppe2_DUMMY_RESERVE->factory3_18 z_ppe3_DUMMY_RESERVE->factory3_18
 z_respirator1_DUMMY_RESERVE->factory3_18
 z_respirator2_DUMMY_RESERVE->factory3_18
 z_metal1_DUMMY_RESERVE->factory4_18 z_metal2_DUMMY_RESERVE->factory4_18
 z_plastic1_DUMMY_RESERVE->factory4_18
 z_plastic2_DUMMY_RESERVE->factory4_18
 z_plastic3_DUMMY_RESERVE->factory4_18 z_ppe1_DUMMY_RESERVE->factory4_18
 z_ppe2_DUMMY_RESERVE->factory4_18 z_ppe3_DUMMY_RESERVE->factory4_18
 z_respirator1_DUMMY_RESERVE->factory4_18
 z_respirator2_DUMMY_RESERVE->factory4_18
 z_metal1_DUMMY_RESERVE->hospital1_18 z_metal2_DUMMY_RESERVE->hospital1_18
 z_plastic1_DUMMY_RESERVE->hospital1_18
 z_plastic2_DUMMY_RESERVE->hospital1_18
 z_plastic3_DUMMY_RESERVE->hospital1_18 z_ppe1_DUMMY_RESERVE->hospital1_18
 z_ppe2_DUMMY_RESERVE->hospital1_18 z_ppe3_DUMMY_RESERVE->hospital1_18
 z_respirator1_DUMMY_RESERVE->hospital1_18
 z_respirator2_DUMMY_RESERVE->hospital1_18
 z_metal1_DUMMY_RESERVE->hospital2_18 z_metal2_DUMMY_RESERVE->hospital2_18
 z_plastic1_DUMMY_RESERVE->hospital2_18
 z_plastic2_DUMMY_RESERVE->hospital2_18
 z_plastic3_DUMMY_RESERVE->hospital2_18 z_ppe1_DUMMY_RESERVE->hospital2_18
 z_ppe2_DUMMY_RESERVE->hospital2_18 z_ppe3_DUMMY_RESERVE->hospital2_18
 z_respirator1_DUMMY_RESERVE->hospital2_18
 z_respirator2_DUMMY_RESERVE->hospital2_18
 z_metal1_DUMMY_RESERVE->hospital3_18 z_metal2_DUMMY_RESERVE->hospital3_18
 z_plastic1_DUMMY_RESERVE->hospital3_18
 z_plastic2_DUMMY_RESERVE->hospital3_18
 z_plastic3_DUMMY_RESERVE->hospital3_18 z_ppe1_DUMMY_RESERVE->hospital3_18
 z_ppe2_DUMMY_RESERVE->hospital3_18 z_ppe3_DUMMY_RESERVE->hospital3_18
 z_respirator1_DUMMY_RESERVE->hospital3_18
 z_respirator2_DUMMY_RESERVE->hospital3_18
 z_metal1_DUMMY_RESERVE->hospital4_18 z_metal2_DUMMY_RESERVE->hospital4_18
 z_plastic1_DUMMY_RESERVE->hospital4_18
 z_plastic2_DUMMY_RESERVE->hospital4_18
 z_plastic3_DUMMY_RESERVE->hospital4_18 z_ppe1_DUMMY_RESERVE->hospital4_18
 z_ppe2_DUMMY_RESERVE->hospital4_18 z_ppe3_DUMMY_RESERVE->hospital4_18
 z_respirator1_DUMMY_RESERVE->hospital4_18
 z_respirator2_DUMMY_RESERVE->hospital4_18 z_metal1_factory1->hospital1_19
 z_metal2_factory1->hospital1_19 z_plastic1_factory1->hospital1_19
 z_plastic2_factory1->hospital1_19 z_plastic3_factory1->hospital1_19
 z_ppe1_factory1->hospital1_19 z_ppe2_factory1->hospital1_19
 z_ppe3_factory1->hospital1_19 z_respirator1_factory1->hospital1_19
 z_respirator2_factory1->hospital1_19 z_metal1_factory1->hospital2_19
 z_metal2_factory1->hospital2_19 z_plastic1_factory1->hospital2_19
 z_plastic2_factory1->hospital2_19 z_plastic3_factory1->hospital2_19
 z_ppe1_factory1->hospital2_19 z_ppe2_factory1->hospital2_19
 z_ppe3_factory1->hospital2_19 z_respirator1_factory1->hospital2_19
 z_respirator2_factory1->hospital2_19 z_metal1_factory2->hospital3_19
 z_metal2_factory2->hospital3_19 z_plastic1_factory2->hospital3_19
 z_plastic2_factory2->hospital3_19 z_plastic3_factory2->hospital3_19
 z_ppe1_factory2->hospital3_19 z_ppe2_factory2->hospital3_19
 z_ppe3_factory2->hospital3_19 z_respirator1_factory2->hospital3_19
 z_respirator2_factory2->hospital3_19 z_metal1_factory2->hospital4_19
 z_metal2_factory2->hospital4_19 z_plastic1_factory2->hospital4_19
 z_plastic2_factory2->hospital4_19 z_plastic3_factory2->hospital4_19
 z_ppe1_factory2->hospital4_19 z_ppe2_factory2->hospital4_19
 z_ppe3_factory2->hospital4_19 z_respirator1_factory2->hospital4_19
 z_respirator2_factory2->hospital4_19 z_metal1_factory3->hospital1_19
 z_metal2_factory3->hospital1_19 z_plastic1_factory3->hospital1_19
 z_plastic2_factory3->hospital1_19 z_plastic3_factory3->hospital1_19
 z_ppe1_factory3->hospital1_19 z_ppe2_factory3->hospital1_19
 z_ppe3_factory3->hospital1_19 z_respirator1_factory3->hospital1_19
 z_respirator2_factory3->hospital1_19 z_metal1_factory3->hospital2_19
 z_metal2_factory3->hospital2_19 z_plastic1_factory3->hospital2_19
 z_plastic2_factory3->hospital2_19 z_plastic3_factory3->hospital2_19
 z_ppe1_factory3->hospital2_19 z_ppe2_factory3->hospital2_19
 z_ppe3_factory3->hospital2_19 z_respirator1_factory3->hospital2_19
 z_respirator2_factory3->hospital2_19 z_metal1_factory4->hospital3_19
 z_metal2_factory4->hospital3_19 z_plastic1_factory4->hospital3_19
 z_plastic2_factory4->hospital3_19 z_plastic3_factory4->hospital3_19
 z_ppe1_factory4->hospital3_19 z_ppe2_factory4->hospital3_19
 z_ppe3_factory4->hospital3_19 z_respirator1_factory4->hospital3_19
 z_respirator2_factory4->hospital3_19 z_metal1_factory4->hospital4_19
 z_metal2_factory4->hospital4_19 z_plastic1_factory4->hospital4_19
 z_plastic2_factory4->hospital4_19 z_plastic3_factory4->hospital4_19
 z_ppe1_factory4->hospital4_19 z_ppe2_factory4->hospital4_19
 z_ppe3_factory4->hospital4_19 z_respirator1_factory4->hospital4_19
 z_respirator2_factory4->hospital4_19 z_metal1_factory1->factory4_19
 z_metal2_factory1->factory4_19 z_plastic1_factory1->factory4_19
 z_plastic2_factory1->factory4_19 z_plastic3_factory1->factory4_19
 z_ppe1_factory1->factory4_19 z_ppe2_factory1->factory4_19
 z_ppe3_factory1->factory4_19 z_respirator1_factory1->factory4_19
 z_respirator2_factory1->factory4_19 z_metal1_factory1->factory2_19
 z_metal2_factory1->factory2_19 z_plastic1_factory1->factory2_19
 z_plastic2_factory1->factory2_19 z_plastic3_factory1->factory2_19
 z_ppe1_factory1->factory2_19 z_ppe2_factory1->factory2_19
 z_ppe3_factory1->factory2_19 z_respirator1_factory1->factory2_19
 z_respirator2_factory1->factory2_19 z_metal1_factory4->factory2_19
 z_metal2_factory4->factory2_19 z_plastic1_factory4->factory2_19
 z_plastic2_factory4->factory2_19 z_plastic3_factory4->factory2_19
 z_ppe1_factory4->factory2_19 z_ppe2_factory4->factory2_19
 z_ppe3_factory4->factory2_19 z_respirator1_factory4->factory2_19
 z_respirator2_factory4->factory2_19 z_metal1_hospital1->hospital2_19
 z_metal2_hospital1->hospital2_19 z_plastic1_hospital1->hospital2_19
 z_plastic2_hospital1->hospital2_19 z_plastic3_hospital1->hospital2_19
 z_ppe1_hospital1->hospital2_19 z_ppe2_hospital1->hospital2_19
 z_ppe3_hospital1->hospital2_19 z_respirator1_hospital1->hospital2_19
 z_respirator2_hospital1->hospital2_19 z_metal1_hospita2->hospital3_19
 z_metal2_hospita2->hospital3_19 z_plastic1_hospita2->hospital3_19
 z_plastic2_hospita2->hospital3_19 z_plastic3_hospita2->hospital3_19
 z_ppe1_hospita2->hospital3_19 z_ppe2_hospita2->hospital3_19
 z_ppe3_hospita2->hospital3_19 z_respirator1_hospita2->hospital3_19
 z_respirator2_hospita2->hospital3_19 z_metal1_DUMMY_RESERVE->factory1_19
 z_metal2_DUMMY_RESERVE->factory1_19 z_plastic1_DUMMY_RESERVE->factory1_19
 z_plastic2_DUMMY_RESERVE->factory1_19
 z_plastic3_DUMMY_RESERVE->factory1_19 z_ppe1_DUMMY_RESERVE->factory1_19
 z_ppe2_DUMMY_RESERVE->factory1_19 z_ppe3_DUMMY_RESERVE->factory1_19
 z_respirator1_DUMMY_RESERVE->factory1_19
 z_respirator2_DUMMY_RESERVE->factory1_19
 z_metal1_DUMMY_RESERVE->factory2_19 z_metal2_DUMMY_RESERVE->factory2_19
 z_plastic1_DUMMY_RESERVE->factory2_19
 z_plastic2_DUMMY_RESERVE->factory2_19
 z_plastic3_DUMMY_RESERVE->factory2_19 z_ppe1_DUMMY_RESERVE->factory2_19
 z_ppe2_DUMMY_RESERVE->factory2_19 z_ppe3_DUMMY_RESERVE->factory2_19
 z_respirator1_DUMMY_RESERVE->factory2_19
 z_respirator2_DUMMY_RESERVE->factory2_19
 z_metal1_DUMMY_RESERVE->factory3_19 z_metal2_DUMMY_RESERVE->factory3_19
 z_plastic1_DUMMY_RESERVE->factory3_19
 z_plastic2_DUMMY_RESERVE->factory3_19
 z_plastic3_DUMMY_RESERVE->factory3_19 z_ppe1_DUMMY_RESERVE->factory3_19
 z_ppe2_DUMMY_RESERVE->factory3_19 z_ppe3_DUMMY_RESERVE->factory3_19
 z_respirator1_DUMMY_RESERVE->factory3_19
 z_respirator2_DUMMY_RESERVE->factory3_19
 z_metal1_DUMMY_RESERVE->factory4_19 z_metal2_DUMMY_RESERVE->factory4_19
 z_plastic1_DUMMY_RESERVE->factory4_19
 z_plastic2_DUMMY_RESERVE->factory4_19
 z_plastic3_DUMMY_RESERVE->factory4_19 z_ppe1_DUMMY_RESERVE->factory4_19
 z_ppe2_DUMMY_RESERVE->factory4_19 z_ppe3_DUMMY_RESERVE->factory4_19
 z_respirator1_DUMMY_RESERVE->factory4_19
 z_respirator2_DUMMY_RESERVE->factory4_19
 z_metal1_DUMMY_RESERVE->hospital1_19 z_metal2_DUMMY_RESERVE->hospital1_19
 z_plastic1_DUMMY_RESERVE->hospital1_19
 z_plastic2_DUMMY_RESERVE->hospital1_19
 z_plastic3_DUMMY_RESERVE->hospital1_19 z_ppe1_DUMMY_RESERVE->hospital1_19
 z_ppe2_DUMMY_RESERVE->hospital1_19 z_ppe3_DUMMY_RESERVE->hospital1_19
 z_respirator1_DUMMY_RESERVE->hospital1_19
 z_respirator2_DUMMY_RESERVE->hospital1_19
 z_metal1_DUMMY_RESERVE->hospital2_19 z_metal2_DUMMY_RESERVE->hospital2_19
 z_plastic1_DUMMY_RESERVE->hospital2_19
 z_plastic2_DUMMY_RESERVE->hospital2_19
 z_plastic3_DUMMY_RESERVE->hospital2_19 z_ppe1_DUMMY_RESERVE->hospital2_19
 z_ppe2_DUMMY_RESERVE->hospital2_19 z_ppe3_DUMMY_RESERVE->hospital2_19
 z_respirator1_DUMMY_RESERVE->hospital2_19
 z_respirator2_DUMMY_RESERVE->hospital2_19
 z_metal1_DUMMY_RESERVE->hospital3_19 z_metal2_DUMMY_RESERVE->hospital3_19
 z_plastic1_DUMMY_RESERVE->hospital3_19
 z_plastic2_DUMMY_RESERVE->hospital3_19
 z_plastic3_DUMMY_RESERVE->hospital3_19 z_ppe1_DUMMY_RESERVE->hospital3_19
 z_ppe2_DUMMY_RESERVE->hospital3_19 z_ppe3_DUMMY_RESERVE->hospital3_19
 z_respirator1_DUMMY_RESERVE->hospital3_19
 z_respirator2_DUMMY_RESERVE->hospital3_19
 z_metal1_DUMMY_RESERVE->hospital4_19 z_metal2_DUMMY_RESERVE->hospital4_19
 z_plastic1_DUMMY_RESERVE->hospital4_19
 z_plastic2_DUMMY_RESERVE->hospital4_19
 z_plastic3_DUMMY_RESERVE->hospital4_19 z_ppe1_DUMMY_RESERVE->hospital4_19
 z_ppe2_DUMMY_RESERVE->hospital4_19 z_ppe3_DUMMY_RESERVE->hospital4_19
 z_respirator1_DUMMY_RESERVE->hospital4_19
 z_respirator2_DUMMY_RESERVE->hospital4_19 s_factory1->hospital1_1
 s_factory1->hospital2_1 s_factory2->hospital3_1 s_factory2->hospital4_1
 s_factory3->hospital1_1 s_factory3->hospital2_1 s_factory4->hospital3_1
 s_factory4->hospital4_1 s_factory1->factory4_1 s_factory1->factory2_1
 s_factory4->factory2_1 s_hospital1->hospital2_1 s_hospita2->hospital3_1
 s_DUMMY_RESERVE->factory1_1 s_DUMMY_RESERVE->factory2_1
 s_DUMMY_RESERVE->factory3_1 s_DUMMY_RESERVE->factory4_1
 s_DUMMY_RESERVE->hospital1_1 s_DUMMY_RESERVE->hospital2_1
 s_DUMMY_RESERVE->hospital3_1 s_DUMMY_RESERVE->hospital4_1
 s_factory1->hospital1_2 s_factory1->hospital2_2 s_factory2->hospital3_2
 s_factory2->hospital4_2 s_factory3->hospital1_2 s_factory3->hospital2_2
 s_factory4->hospital3_2 s_factory4->hospital4_2 s_factory1->factory4_2
 s_factory1->factory2_2 s_factory4->factory2_2 s_hospital1->hospital2_2
 s_hospita2->hospital3_2 s_DUMMY_RESERVE->factory1_2
 s_DUMMY_RESERVE->factory2_2 s_DUMMY_RESERVE->factory3_2
 s_DUMMY_RESERVE->factory4_2 s_DUMMY_RESERVE->hospital1_2
 s_DUMMY_RESERVE->hospital2_2 s_DUMMY_RESERVE->hospital3_2
 s_DUMMY_RESERVE->hospital4_2 s_factory1->hospital1_3
 s_factory1->hospital2_3 s_factory2->hospital3_3 s_factory2->hospital4_3
 s_factory3->hospital1_3 s_factory3->hospital2_3 s_factory4->hospital3_3
 s_factory4->hospital4_3 s_factory1->factory4_3 s_factory1->factory2_3
 s_factory4->factory2_3 s_hospital1->hospital2_3 s_hospita2->hospital3_3
 s_DUMMY_RESERVE->factory1_3 s_DUMMY_RESERVE->factory2_3
 s_DUMMY_RESERVE->factory3_3 s_DUMMY_RESERVE->factory4_3
 s_DUMMY_RESERVE->hospital1_3 s_DUMMY_RESERVE->hospital2_3
 s_DUMMY_RESERVE->hospital3_3 s_DUMMY_RESERVE->hospital4_3
 s_factory1->hospital1_4 s_factory1->hospital2_4 s_factory2->hospital3_4
 s_factory2->hospital4_4 s_factory3->hospital1_4 s_factory3->hospital2_4
 s_factory4->hospital3_4 s_factory4->hospital4_4 s_factory1->factory4_4
 s_factory1->factory2_4 s_factory4->factory2_4 s_hospital1->hospital2_4
 s_hospita2->hospital3_4 s_DUMMY_RESERVE->factory1_4
 s_DUMMY_RESERVE->factory2_4 s_DUMMY_RESERVE->factory3_4
 s_DUMMY_RESERVE->factory4_4 s_DUMMY_RESERVE->hospital1_4
 s_DUMMY_RESERVE->hospital2_4 s_DUMMY_RESERVE->hospital3_4
 s_DUMMY_RESERVE->hospital4_4 s_factory1->hospital1_5
 s_factory1->hospital2_5 s_factory2->hospital3_5 s_factory2->hospital4_5
 s_factory3->hospital1_5 s_factory3->hospital2_5 s_factory4->hospital3_5
 s_factory4->hospital4_5 s_factory1->factory4_5 s_factory1->factory2_5
 s_factory4->factory2_5 s_hospital1->hospital2_5 s_hospita2->hospital3_5
 s_DUMMY_RESERVE->factory1_5 s_DUMMY_RESERVE->factory2_5
 s_DUMMY_RESERVE->factory3_5 s_DUMMY_RESERVE->factory4_5
 s_DUMMY_RESERVE->hospital1_5 s_DUMMY_RESERVE->hospital2_5
 s_DUMMY_RESERVE->hospital3_5 s_DUMMY_RESERVE->hospital4_5
 s_factory1->hospital1_6 s_factory1->hospital2_6 s_factory2->hospital3_6
 s_factory2->hospital4_6 s_factory3->hospital1_6 s_factory3->hospital2_6
 s_factory4->hospital3_6 s_factory4->hospital4_6 s_factory1->factory4_6
 s_factory1->factory2_6 s_factory4->factory2_6 s_hospital1->hospital2_6
 s_hospita2->hospital3_6 s_DUMMY_RESERVE->factory1_6
 s_DUMMY_RESERVE->factory2_6 s_DUMMY_RESERVE->factory3_6
 s_DUMMY_RESERVE->factory4_6 s_DUMMY_RESERVE->hospital1_6
 s_DUMMY_RESERVE->hospital2_6 s_DUMMY_RESERVE->hospital3_6
 s_DUMMY_RESERVE->hospital4_6 s_factory1->hospital1_7
 s_factory1->hospital2_7 s_factory2->hospital3_7 s_factory2->hospital4_7
 s_factory3->hospital1_7 s_factory3->hospital2_7 s_factory4->hospital3_7
 s_factory4->hospital4_7 s_factory1->factory4_7 s_factory1->factory2_7
 s_factory4->factory2_7 s_hospital1->hospital2_7 s_hospita2->hospital3_7
 s_DUMMY_RESERVE->factory1_7 s_DUMMY_RESERVE->factory2_7
 s_DUMMY_RESERVE->factory3_7 s_DUMMY_RESERVE->factory4_7
 s_DUMMY_RESERVE->hospital1_7 s_DUMMY_RESERVE->hospital2_7
 s_DUMMY_RESERVE->hospital3_7 s_DUMMY_RESERVE->hospital4_7
 s_factory1->hospital1_8 s_factory1->hospital2_8 s_factory2->hospital3_8
 s_factory2->hospital4_8 s_factory3->hospital1_8 s_factory3->hospital2_8
 s_factory4->hospital3_8 s_factory4->hospital4_8 s_factory1->factory4_8
 s_factory1->factory2_8 s_factory4->factory2_8 s_hospital1->hospital2_8
 s_hospita2->hospital3_8 s_DUMMY_RESERVE->factory1_8
 s_DUMMY_RESERVE->factory2_8 s_DUMMY_RESERVE->factory3_8
 s_DUMMY_RESERVE->factory4_8 s_DUMMY_RESERVE->hospital1_8
 s_DUMMY_RESERVE->hospital2_8 s_DUMMY_RESERVE->hospital3_8
 s_DUMMY_RESERVE->hospital4_8 s_factory1->hospital1_9
 s_factory1->hospital2_9 s_factory2->hospital3_9 s_factory2->hospital4_9
 s_factory3->hospital1_9 s_factory3->hospital2_9 s_factory4->hospital3_9
 s_factory4->hospital4_9 s_factory1->factory4_9 s_factory1->factory2_9
 s_factory4->factory2_9 s_hospital1->hospital2_9 s_hospita2->hospital3_9
 s_DUMMY_RESERVE->factory1_9 s_DUMMY_RESERVE->factory2_9
 s_DUMMY_RESERVE->factory3_9 s_DUMMY_RESERVE->factory4_9
 s_DUMMY_RESERVE->hospital1_9 s_DUMMY_RESERVE->hospital2_9
 s_DUMMY_RESERVE->hospital3_9 s_DUMMY_RESERVE->hospital4_9
 s_factory1->hospital1_10 s_factory1->hospital2_10 s_factory2->hospital3_10
 s_factory2->hospital4_10 s_factory3->hospital1_10 s_factory3->hospital2_10
 s_factory4->hospital3_10 s_factory4->hospital4_10 s_factory1->factory4_10
 s_factory1->factory2_10 s_factory4->factory2_10 s_hospital1->hospital2_10
 s_hospita2->hospital3_10 s_DUMMY_RESERVE->factory1_10
 s_DUMMY_RESERVE->factory2_10 s_DUMMY_RESERVE->factory3_10
 s_DUMMY_RESERVE->factory4_10 s_DUMMY_RESERVE->hospital1_10
 s_DUMMY_RESERVE->hospital2_10 s_DUMMY_RESERVE->hospital3_10
 s_DUMMY_RESERVE->hospital4_10 s_factory1->hospital1_11
 s_factory1->hospital2_11 s_factory2->hospital3_11 s_factory2->hospital4_11
 s_factory3->hospital1_11 s_factory3->hospital2_11 s_factory4->hospital3_11
 s_factory4->hospital4_11 s_factory1->factory4_11 s_factory1->factory2_11
 s_factory4->factory2_11 s_hospital1->hospital2_11 s_hospita2->hospital3_11
 s_DUMMY_RESERVE->factory1_11 s_DUMMY_RESERVE->factory2_11
 s_DUMMY_RESERVE->factory3_11 s_DUMMY_RESERVE->factory4_11
 s_DUMMY_RESERVE->hospital1_11 s_DUMMY_RESERVE->hospital2_11
 s_DUMMY_RESERVE->hospital3_11 s_DUMMY_RESERVE->hospital4_11
 s_factory1->hospital1_12 s_factory1->hospital2_12 s_factory2->hospital3_12
 s_factory2->hospital4_12 s_factory3->hospital1_12 s_factory3->hospital2_12
 s_factory4->hospital3_12 s_factory4->hospital4_12 s_factory1->factory4_12
 s_factory1->factory2_12 s_factory4->factory2_12 s_hospital1->hospital2_12
 s_hospita2->hospital3_12 s_DUMMY_RESERVE->factory1_12
 s_DUMMY_RESERVE->factory2_12 s_DUMMY_RESERVE->factory3_12
 s_DUMMY_RESERVE->factory4_12 s_DUMMY_RESERVE->hospital1_12
 s_DUMMY_RESERVE->hospital2_12 s_DUMMY_RESERVE->hospital3_12
 s_DUMMY_RESERVE->hospital4_12 s_factory1->hospital1_13
 s_factory1->hospital2_13 s_factory2->hospital3_13 s_factory2->hospital4_13
 s_factory3->hospital1_13 s_factory3->hospital2_13 s_factory4->hospital3_13
 s_factory4->hospital4_13 s_factory1->factory4_13 s_factory1->factory2_13
 s_factory4->factory2_13 s_hospital1->hospital2_13 s_hospita2->hospital3_13
 s_DUMMY_RESERVE->factory1_13 s_DUMMY_RESERVE->factory2_13
 s_DUMMY_RESERVE->factory3_13 s_DUMMY_RESERVE->factory4_13
 s_DUMMY_RESERVE->hospital1_13 s_DUMMY_RESERVE->hospital2_13
 s_DUMMY_RESERVE->hospital3_13 s_DUMMY_RESERVE->hospital4_13
 s_factory1->hospital1_14 s_factory1->hospital2_14 s_factory2->hospital3_14
 s_factory2->hospital4_14 s_factory3->hospital1_14 s_factory3->hospital2_14
 s_factory4->hospital3_14 s_factory4->hospital4_14 s_factory1->factory4_14
 s_factory1->factory2_14 s_factory4->factory2_14 s_hospital1->hospital2_14
 s_hospita2->hospital3_14 s_DUMMY_RESERVE->factory1_14
 s_DUMMY_RESERVE->factory2_14 s_DUMMY_RESERVE->factory3_14
 s_DUMMY_RESERVE->factory4_14 s_DUMMY_RESERVE->hospital1_14
 s_DUMMY_RESERVE->hospital2_14 s_DUMMY_RESERVE->hospital3_14
 s_DUMMY_RESERVE->hospital4_14 s_factory1->hospital1_15
 s_factory1->hospital2_15 s_factory2->hospital3_15 s_factory2->hospital4_15
 s_factory3->hospital1_15 s_factory3->hospital2_15 s_factory4->hospital3_15
 s_factory4->hospital4_15 s_factory1->factory4_15 s_factory1->factory2_15
 s_factory4->factory2_15 s_hospital1->hospital2_15 s_hospita2->hospital3_15
 s_DUMMY_RESERVE->factory1_15 s_DUMMY_RESERVE->factory2_15
 s_DUMMY_RESERVE->factory3_15 s_DUMMY_RESERVE->factory4_15
 s_DUMMY_RESERVE->hospital1_15 s_DUMMY_RESERVE->hospital2_15
 s_DUMMY_RESERVE->hospital3_15 s_DUMMY_RESERVE->hospital4_15
 s_factory1->hospital1_16 s_factory1->hospital2_16 s_factory2->hospital3_16
 s_factory2->hospital4_16 s_factory3->hospital1_16 s_factory3->hospital2_16
 s_factory4->hospital3_16 s_factory4->hospital4_16 s_factory1->factory4_16
 s_factory1->factory2_16 s_factory4->factory2_16 s_hospital1->hospital2_16
 s_hospita2->hospital3_16 s_DUMMY_RESERVE->factory1_16
 s_DUMMY_RESERVE->factory2_16 s_DUMMY_RESERVE->factory3_16
 s_DUMMY_RESERVE->factory4_16 s_DUMMY_RESERVE->hospital1_16
 s_DUMMY_RESERVE->hospital2_16 s_DUMMY_RESERVE->hospital3_16
 s_DUMMY_RESERVE->hospital4_16 s_factory1->hospital1_17
 s_factory1->hospital2_17 s_factory2->hospital3_17 s_factory2->hospital4_17
 s_factory3->hospital1_17 s_factory3->hospital2_17 s_factory4->hospital3_17
 s_factory4->hospital4_17 s_factory1->factory4_17 s_factory1->factory2_17
 s_factory4->factory2_17 s_hospital1->hospital2_17 s_hospita2->hospital3_17
 s_DUMMY_RESERVE->factory1_17 s_DUMMY_RESERVE->factory2_17
 s_DUMMY_RESERVE->factory3_17 s_DUMMY_RESERVE->factory4_17
 s_DUMMY_RESERVE->hospital1_17 s_DUMMY_RESERVE->hospital2_17
 s_DUMMY_RESERVE->hospital3_17 s_DUMMY_RESERVE->hospital4_17
 s_factory1->hospital1_18 s_factory1->hospital2_18 s_factory2->hospital3_18
 s_factory2->hospital4_18 s_factory3->hospital1_18 s_factory3->hospital2_18
 s_factory4->hospital3_18 s_factory4->hospital4_18 s_factory1->factory4_18
 s_factory1->factory2_18 s_factory4->factory2_18 s_hospital1->hospital2_18
 s_hospita2->hospital3_18 s_DUMMY_RESERVE->factory1_18
 s_DUMMY_RESERVE->factory2_18 s_DUMMY_RESERVE->factory3_18
 s_DUMMY_RESERVE->factory4_18 s_DUMMY_RESERVE->hospital1_18
 s_DUMMY_RESERVE->hospital2_18 s_DUMMY_RESERVE->hospital3_18
 s_DUMMY_RESERVE->hospital4_18 s_factory1->hospital1_19
 s_factory1->hospital2_19 s_factory2->hospital3_19 s_factory2->hospital4_19
 s_factory3->hospital1_19 s_factory3->hospital2_19 s_factory4->hospital3_19
 s_factory4->hospital4_19 s_factory1->factory4_19 s_factory1->factory2_19
 s_factory4->factory2_19 s_hospital1->hospital2_19 s_hospita2->hospital3_19
 s_DUMMY_RESERVE->factory1_19 s_DUMMY_RESERVE->factory2_19
 s_DUMMY_RESERVE->factory3_19 s_DUMMY_RESERVE->factory4_19
 s_DUMMY_RESERVE->hospital1_19 s_DUMMY_RESERVE->hospital2_19
 s_DUMMY_RESERVE->hospital3_19 s_DUMMY_RESERVE->hospital4_19
 M_metal1_factory1_1 M_metal1_factory1_2 M_metal1_factory1_3
 M_metal1_factory1_4 M_metal1_factory1_5 M_metal1_factory1_6
 M_metal1_factory1_7 M_metal1_factory1_8 M_metal1_factory1_9
 M_metal1_factory1_10 M_metal1_factory1_11 M_metal1_factory1_12
 M_metal1_factory1_13 M_metal1_factory1_14 M_metal1_factory1_15
 M_metal1_factory1_16 M_metal1_factory1_17 M_metal1_factory1_18
 M_metal1_factory1_19 M_metal1_factory2_1 M_metal1_factory2_2
 M_metal1_factory2_3 M_metal1_factory2_4 M_metal1_factory2_5
 M_metal1_factory2_6 M_metal1_factory2_7 M_metal1_factory2_8
 M_metal1_factory2_9 M_metal1_factory2_10 M_metal1_factory2_11
 M_metal1_factory2_12 M_metal1_factory2_13 M_metal1_factory2_14
 M_metal1_factory2_15 M_metal1_factory2_16 M_metal1_factory2_17
 M_metal1_factory2_18 M_metal1_factory2_19 M_metal1_factory3_1
 M_metal1_factory3_2 M_metal1_factory3_3 M_metal1_factory3_4
 M_metal1_factory3_5 M_metal1_factory3_6 M_metal1_factory3_7
 M_metal1_factory3_8 M_metal1_factory3_9 M_metal1_factory3_10
 M_metal1_factory3_11 M_metal1_factory3_12 M_metal1_factory3_13
 M_metal1_factory3_14 M_metal1_factory3_15 M_metal1_factory3_16
 M_metal1_factory3_17 M_metal1_factory3_18 M_metal1_factory3_19
 M_metal1_factory4_1 M_metal1_factory4_2 M_metal1_factory4_3
 M_metal1_factory4_4 M_metal1_factory4_5 M_metal1_factory4_6
 M_metal1_factory4_7 M_metal1_factory4_8 M_metal1_factory4_9
 M_metal1_factory4_10 M_metal1_factory4_11 M_metal1_factory4_12
 M_metal1_factory4_13 M_metal1_factory4_14 M_metal1_factory4_15
 M_metal1_factory4_16 M_metal1_factory4_17 M_metal1_factory4_18
 M_metal1_factory4_19 M_metal1_DUMMY_RESERVE_1 M_metal1_DUMMY_RESERVE_2
 M_metal1_DUMMY_RESERVE_3 M_metal1_DUMMY_RESERVE_4 M_metal1_DUMMY_RESERVE_5
 M_metal1_DUMMY_RESERVE_6 M_metal1_DUMMY_RESERVE_7 M_metal1_DUMMY_RESERVE_8
 M_metal1_DUMMY_RESERVE_9 M_metal1_DUMMY_RESERVE_10
 M_metal1_DUMMY_RESERVE_11 M_metal1_DUMMY_RESERVE_12
 M_metal1_DUMMY_RESERVE_13 M_metal1_DUMMY_RESERVE_14
 M_metal1_DUMMY_RESERVE_15 M_metal1_DUMMY_RESERVE_16
 M_metal1_DUMMY_RESERVE_17 M_metal1_DUMMY_RESERVE_18
 M_metal1_DUMMY_RESERVE_19 M_metal1_hospital1_1 M_metal1_hospital1_2
 M_metal1_hospital1_3 M_metal1_hospital1_4 M_metal1_hospital1_5
 M_metal1_hospital1_6 M_metal1_hospital1_7 M_metal1_hospital1_8
 M_metal1_hospital1_9 M_metal1_hospital1_10 M_metal1_hospital1_11
 M_metal1_hospital1_12 M_metal1_hospital1_13 M_metal1_hospital1_14
 M_metal1_hospital1_15 M_metal1_hospital1_16 M_metal1_hospital1_17
 M_metal1_hospital1_18 M_metal1_hospital1_19 M_metal1_hospital2_1
 M_metal1_hospital2_2 M_metal1_hospital2_3 M_metal1_hospital2_4
 M_metal1_hospital2_5 M_metal1_hospital2_6 M_metal1_hospital2_7
 M_metal1_hospital2_8 M_metal1_hospital2_9 M_metal1_hospital2_10
 M_metal1_hospital2_11 M_metal1_hospital2_12 M_metal1_hospital2_13
 M_metal1_hospital2_14 M_metal1_hospital2_15 M_metal1_hospital2_16
 M_metal1_hospital2_17 M_metal1_hospital2_18 M_metal1_hospital2_19
 M_metal1_hospital3_1 M_metal1_hospital3_2 M_metal1_hospital3_3
 M_metal1_hospital3_4 M_metal1_hospital3_5 M_metal1_hospital3_6
 M_metal1_hospital3_7 M_metal1_hospital3_8 M_metal1_hospital3_9
 M_metal1_hospital3_10 M_metal1_hospital3_11 M_metal1_hospital3_12
 M_metal1_hospital3_13 M_metal1_hospital3_14 M_metal1_hospital3_15
 M_metal1_hospital3_16 M_metal1_hospital3_17 M_metal1_hospital3_18
 M_metal1_hospital3_19 M_metal1_hospital4_1 M_metal1_hospital4_2
 M_metal1_hospital4_3 M_metal1_hospital4_4 M_metal1_hospital4_5
 M_metal1_hospital4_6 M_metal1_hospital4_7 M_metal1_hospital4_8
 M_metal1_hospital4_9 M_metal1_hospital4_10 M_metal1_hospital4_11
 M_metal1_hospital4_12 M_metal1_hospital4_13 M_metal1_hospital4_14
 M_metal1_hospital4_15 M_metal1_hospital4_16 M_metal1_hospital4_17
 M_metal1_hospital4_18 M_metal1_hospital4_19 M_metal2_factory1_1
 M_metal2_factory1_2 M_metal2_factory1_3 M_metal2_factory1_4
 M_metal2_factory1_5 M_metal2_factory1_6 M_metal2_factory1_7
 M_metal2_factory1_8 M_metal2_factory1_9 M_metal2_factory1_10
 M_metal2_factory1_11 M_metal2_factory1_12 M_metal2_factory1_13
 M_metal2_factory1_14 M_metal2_factory1_15 M_metal2_factory1_16
 M_metal2_factory1_17 M_metal2_factory1_18 M_metal2_factory1_19
 M_metal2_factory2_1 M_metal2_factory2_2 M_metal2_factory2_3
 M_metal2_factory2_4 M_metal2_factory2_5 M_metal2_factory2_6
 M_metal2_factory2_7 M_metal2_factory2_8 M_metal2_factory2_9
 M_metal2_factory2_10 M_metal2_factory2_11 M_metal2_factory2_12
 M_metal2_factory2_13 M_metal2_factory2_14 M_metal2_factory2_15
 M_metal2_factory2_16 M_metal2_factory2_17 M_metal2_factory2_18
 M_metal2_factory2_19 M_metal2_factory3_1 M_metal2_factory3_2
 M_metal2_factory3_3 M_metal2_factory3_4 M_metal2_factory3_5
 M_metal2_factory3_6 M_metal2_factory3_7 M_metal2_factory3_8
 M_metal2_factory3_9 M_metal2_factory3_10 M_metal2_factory3_11
 M_metal2_factory3_12 M_metal2_factory3_13 M_metal2_factory3_14
 M_metal2_factory3_15 M_metal2_factory3_16 M_metal2_factory3_17
 M_metal2_factory3_18 M_metal2_factory3_19 M_metal2_factory4_1
 M_metal2_factory4_2 M_metal2_factory4_3 M_metal2_factory4_4
 M_metal2_factory4_5 M_metal2_factory4_6 M_metal2_factory4_7
 M_metal2_factory4_8 M_metal2_factory4_9 M_metal2_factory4_10
 M_metal2_factory4_11 M_metal2_factory4_12 M_metal2_factory4_13
 M_metal2_factory4_14 M_metal2_factory4_15 M_metal2_factory4_16
 M_metal2_factory4_17 M_metal2_factory4_18 M_metal2_factory4_19
 M_metal2_DUMMY_RESERVE_1 M_metal2_DUMMY_RESERVE_2 M_metal2_DUMMY_RESERVE_3
 M_metal2_DUMMY_RESERVE_4 M_metal2_DUMMY_RESERVE_5 M_metal2_DUMMY_RESERVE_6
 M_metal2_DUMMY_RESERVE_7 M_metal2_DUMMY_RESERVE_8 M_metal2_DUMMY_RESERVE_9
 M_metal2_DUMMY_RESERVE_10 M_metal2_DUMMY_RESERVE_11
 M_metal2_DUMMY_RESERVE_12 M_metal2_DUMMY_RESERVE_13
 M_metal2_DUMMY_RESERVE_14 M_metal2_DUMMY_RESERVE_15
 M_metal2_DUMMY_RESERVE_16 M_metal2_DUMMY_RESERVE_17
 M_metal2_DUMMY_RESERVE_18 M_metal2_DUMMY_RESERVE_19 M_metal2_hospital1_1
 M_metal2_hospital1_2 M_metal2_hospital1_3 M_metal2_hospital1_4
 M_metal2_hospital1_5 M_metal2_hospital1_6 M_metal2_hospital1_7
 M_metal2_hospital1_8 M_metal2_hospital1_9 M_metal2_hospital1_10
 M_metal2_hospital1_11 M_metal2_hospital1_12 M_metal2_hospital1_13
 M_metal2_hospital1_14 M_metal2_hospital1_15 M_metal2_hospital1_16
 M_metal2_hospital1_17 M_metal2_hospital1_18 M_metal2_hospital1_19
 M_metal2_hospital2_1 M_metal2_hospital2_2 M_metal2_hospital2_3
 M_metal2_hospital2_4 M_metal2_hospital2_5 M_metal2_hospital2_6
 M_metal2_hospital2_7 M_metal2_hospital2_8 M_metal2_hospital2_9
 M_metal2_hospital2_10 M_metal2_hospital2_11 M_metal2_hospital2_12
 M_metal2_hospital2_13 M_metal2_hospital2_14 M_metal2_hospital2_15
 M_metal2_hospital2_16 M_metal2_hospital2_17 M_metal2_hospital2_18
 M_metal2_hospital2_19 M_metal2_hospital3_1 M_metal2_hospital3_2
 M_metal2_hospital3_3 M_metal2_hospital3_4 M_metal2_hospital3_5
 M_metal2_hospital3_6 M_metal2_hospital3_7 M_metal2_hospital3_8
 M_metal2_hospital3_9 M_metal2_hospital3_10 M_metal2_hospital3_11
 M_metal2_hospital3_12 M_metal2_hospital3_13 M_metal2_hospital3_14
 M_metal2_hospital3_15 M_metal2_hospital3_16 M_metal2_hospital3_17
 M_metal2_hospital3_18 M_metal2_hospital3_19 M_metal2_hospital4_1
 M_metal2_hospital4_2 M_metal2_hospital4_3 M_metal2_hospital4_4
 M_metal2_hospital4_5 M_metal2_hospital4_6 M_metal2_hospital4_7
 M_metal2_hospital4_8 M_metal2_hospital4_9 M_metal2_hospital4_10
 M_metal2_hospital4_11 M_metal2_hospital4_12 M_metal2_hospital4_13
 M_metal2_hospital4_14 M_metal2_hospital4_15 M_metal2_hospital4_16
 M_metal2_hospital4_17 M_metal2_hospital4_18 M_metal2_hospital4_19
 M_plastic1_factory1_1 M_plastic1_factory1_2 M_plastic1_factory1_3
 M_plastic1_factory1_4 M_plastic1_factory1_5 M_plastic1_factory1_6
 M_plastic1_factory1_7 M_plastic1_factory1_8 M_plastic1_factory1_9
 M_plastic1_factory1_10 M_plastic1_factory1_11 M_plastic1_factory1_12
 M_plastic1_factory1_13 M_plastic1_factory1_14 M_plastic1_factory1_15
 M_plastic1_factory1_16 M_plastic1_factory1_17 M_plastic1_factory1_18
 M_plastic1_factory1_19 M_plastic1_factory2_1 M_plastic1_factory2_2
 M_plastic1_factory2_3 M_plastic1_factory2_4 M_plastic1_factory2_5
 M_plastic1_factory2_6 M_plastic1_factory2_7 M_plastic1_factory2_8
 M_plastic1_factory2_9 M_plastic1_factory2_10 M_plastic1_factory2_11
 M_plastic1_factory2_12 M_plastic1_factory2_13 M_plastic1_factory2_14
 M_plastic1_factory2_15 M_plastic1_factory2_16 M_plastic1_factory2_17
 M_plastic1_factory2_18 M_plastic1_factory2_19 M_plastic1_factory3_1
 M_plastic1_factory3_2 M_plastic1_factory3_3 M_plastic1_factory3_4
 M_plastic1_factory3_5 M_plastic1_factory3_6 M_plastic1_factory3_7
 M_plastic1_factory3_8 M_plastic1_factory3_9 M_plastic1_factory3_10
 M_plastic1_factory3_11 M_plastic1_factory3_12 M_plastic1_factory3_13
 M_plastic1_factory3_14 M_plastic1_factory3_15 M_plastic1_factory3_16
 M_plastic1_factory3_17 M_plastic1_factory3_18 M_plastic1_factory3_19
 M_plastic1_factory4_1 M_plastic1_factory4_2 M_plastic1_factory4_3
 M_plastic1_factory4_4 M_plastic1_factory4_5 M_plastic1_factory4_6
 M_plastic1_factory4_7 M_plastic1_factory4_8 M_plastic1_factory4_9
 M_plastic1_factory4_10 M_plastic1_factory4_11 M_plastic1_factory4_12
 M_plastic1_factory4_13 M_plastic1_factory4_14 M_plastic1_factory4_15
 M_plastic1_factory4_16 M_plastic1_factory4_17 M_plastic1_factory4_18
 M_plastic1_factory4_19 M_plastic1_DUMMY_RESERVE_1
 M_plastic1_DUMMY_RESERVE_2 M_plastic1_DUMMY_RESERVE_3
 M_plastic1_DUMMY_RESERVE_4 M_plastic1_DUMMY_RESERVE_5
 M_plastic1_DUMMY_RESERVE_6 M_plastic1_DUMMY_RESERVE_7
 M_plastic1_DUMMY_RESERVE_8 M_plastic1_DUMMY_RESERVE_9
 M_plastic1_DUMMY_RESERVE_10 M_plastic1_DUMMY_RESERVE_11
 M_plastic1_DUMMY_RESERVE_12 M_plastic1_DUMMY_RESERVE_13
 M_plastic1_DUMMY_RESERVE_14 M_plastic1_DUMMY_RESERVE_15
 M_plastic1_DUMMY_RESERVE_16 M_plastic1_DUMMY_RESERVE_17
 M_plastic1_DUMMY_RESERVE_18 M_plastic1_DUMMY_RESERVE_19
 M_plastic1_hospital1_1 M_plastic1_hospital1_2 M_plastic1_hospital1_3
 M_plastic1_hospital1_4 M_plastic1_hospital1_5 M_plastic1_hospital1_6
 M_plastic1_hospital1_7 M_plastic1_hospital1_8 M_plastic1_hospital1_9
 M_plastic1_hospital1_10 M_plastic1_hospital1_11 M_plastic1_hospital1_12
 M_plastic1_hospital1_13 M_plastic1_hospital1_14 M_plastic1_hospital1_15
 M_plastic1_hospital1_16 M_plastic1_hospital1_17 M_plastic1_hospital1_18
 M_plastic1_hospital1_19 M_plastic1_hospital2_1 M_plastic1_hospital2_2
 M_plastic1_hospital2_3 M_plastic1_hospital2_4 M_plastic1_hospital2_5
 M_plastic1_hospital2_6 M_plastic1_hospital2_7 M_plastic1_hospital2_8
 M_plastic1_hospital2_9 M_plastic1_hospital2_10 M_plastic1_hospital2_11
 M_plastic1_hospital2_12 M_plastic1_hospital2_13 M_plastic1_hospital2_14
 M_plastic1_hospital2_15 M_plastic1_hospital2_16 M_plastic1_hospital2_17
 M_plastic1_hospital2_18 M_plastic1_hospital2_19 M_plastic1_hospital3_1
 M_plastic1_hospital3_2 M_plastic1_hospital3_3 M_plastic1_hospital3_4
 M_plastic1_hospital3_5 M_plastic1_hospital3_6 M_plastic1_hospital3_7
 M_plastic1_hospital3_8 M_plastic1_hospital3_9 M_plastic1_hospital3_10
 M_plastic1_hospital3_11 M_plastic1_hospital3_12 M_plastic1_hospital3_13
 M_plastic1_hospital3_14 M_plastic1_hospital3_15 M_plastic1_hospital3_16
 M_plastic1_hospital3_17 M_plastic1_hospital3_18 M_plastic1_hospital3_19
 M_plastic1_hospital4_1 M_plastic1_hospital4_2 M_plastic1_hospital4_3
 M_plastic1_hospital4_4 M_plastic1_hospital4_5 M_plastic1_hospital4_6
 M_plastic1_hospital4_7 M_plastic1_hospital4_8 M_plastic1_hospital4_9
 M_plastic1_hospital4_10 M_plastic1_hospital4_11 M_plastic1_hospital4_12
 M_plastic1_hospital4_13 M_plastic1_hospital4_14 M_plastic1_hospital4_15
 M_plastic1_hospital4_16 M_plastic1_hospital4_17 M_plastic1_hospital4_18
 M_plastic1_hospital4_19 M_plastic2_factory1_1 M_plastic2_factory1_2
 M_plastic2_factory1_3 M_plastic2_factory1_4 M_plastic2_factory1_5
 M_plastic2_factory1_6 M_plastic2_factory1_7 M_plastic2_factory1_8
 M_plastic2_factory1_9 M_plastic2_factory1_10 M_plastic2_factory1_11
 M_plastic2_factory1_12 M_plastic2_factory1_13 M_plastic2_factory1_14
 M_plastic2_factory1_15 M_plastic2_factory1_16 M_plastic2_factory1_17
 M_plastic2_factory1_18 M_plastic2_factory1_19 M_plastic2_factory2_1
 M_plastic2_factory2_2 M_plastic2_factory2_3 M_plastic2_factory2_4
 M_plastic2_factory2_5 M_plastic2_factory2_6 M_plastic2_factory2_7
 M_plastic2_factory2_8 M_plastic2_factory2_9 M_plastic2_factory2_10
 M_plastic2_factory2_11 M_plastic2_factory2_12 M_plastic2_factory2_13
 M_plastic2_factory2_14 M_plastic2_factory2_15 M_plastic2_factory2_16
 M_plastic2_factory2_17 M_plastic2_factory2_18 M_plastic2_factory2_19
 M_plastic2_factory3_1 M_plastic2_factory3_2 M_plastic2_factory3_3
 M_plastic2_factory3_4 M_plastic2_factory3_5 M_plastic2_factory3_6
 M_plastic2_factory3_7 M_plastic2_factory3_8 M_plastic2_factory3_9
 M_plastic2_factory3_10 M_plastic2_factory3_11 M_plastic2_factory3_12
 M_plastic2_factory3_13 M_plastic2_factory3_14 M_plastic2_factory3_15
 M_plastic2_factory3_16 M_plastic2_factory3_17 M_plastic2_factory3_18
 M_plastic2_factory3_19 M_plastic2_factory4_1 M_plastic2_factory4_2
 M_plastic2_factory4_3 M_plastic2_factory4_4 M_plastic2_factory4_5
 M_plastic2_factory4_6 M_plastic2_factory4_7 M_plastic2_factory4_8
 M_plastic2_factory4_9 M_plastic2_factory4_10 M_plastic2_factory4_11
 M_plastic2_factory4_12 M_plastic2_factory4_13 M_plastic2_factory4_14
 M_plastic2_factory4_15 M_plastic2_factory4_16 M_plastic2_factory4_17
 M_plastic2_factory4_18 M_plastic2_factory4_19 M_plastic2_DUMMY_RESERVE_1
 M_plastic2_DUMMY_RESERVE_2 M_plastic2_DUMMY_RESERVE_3
 M_plastic2_DUMMY_RESERVE_4 M_plastic2_DUMMY_RESERVE_5
 M_plastic2_DUMMY_RESERVE_6 M_plastic2_DUMMY_RESERVE_7
 M_plastic2_DUMMY_RESERVE_8 M_plastic2_DUMMY_RESERVE_9
 M_plastic2_DUMMY_RESERVE_10 M_plastic2_DUMMY_RESERVE_11
 M_plastic2_DUMMY_RESERVE_12 M_plastic2_DUMMY_RESERVE_13
 M_plastic2_DUMMY_RESERVE_14 M_plastic2_DUMMY_RESERVE_15
 M_plastic2_DUMMY_RESERVE_16 M_plastic2_DUMMY_RESERVE_17
 M_plastic2_DUMMY_RESERVE_18 M_plastic2_DUMMY_RESERVE_19
 M_plastic2_hospital1_1 M_plastic2_hospital1_2 M_plastic2_hospital1_3
 M_plastic2_hospital1_4 M_plastic2_hospital1_5 M_plastic2_hospital1_6
 M_plastic2_hospital1_7 M_plastic2_hospital1_8 M_plastic2_hospital1_9
 M_plastic2_hospital1_10 M_plastic2_hospital1_11 M_plastic2_hospital1_12
 M_plastic2_hospital1_13 M_plastic2_hospital1_14 M_plastic2_hospital1_15
 M_plastic2_hospital1_16 M_plastic2_hospital1_17 M_plastic2_hospital1_18
 M_plastic2_hospital1_19 M_plastic2_hospital2_1 M_plastic2_hospital2_2
 M_plastic2_hospital2_3 M_plastic2_hospital2_4 M_plastic2_hospital2_5
 M_plastic2_hospital2_6 M_plastic2_hospital2_7 M_plastic2_hospital2_8
 M_plastic2_hospital2_9 M_plastic2_hospital2_10 M_plastic2_hospital2_11
 M_plastic2_hospital2_12 M_plastic2_hospital2_13 M_plastic2_hospital2_14
 M_plastic2_hospital2_15 M_plastic2_hospital2_16 M_plastic2_hospital2_17
 M_plastic2_hospital2_18 M_plastic2_hospital2_19 M_plastic2_hospital3_1
 M_plastic2_hospital3_2 M_plastic2_hospital3_3 M_plastic2_hospital3_4
 M_plastic2_hospital3_5 M_plastic2_hospital3_6 M_plastic2_hospital3_7
 M_plastic2_hospital3_8 M_plastic2_hospital3_9 M_plastic2_hospital3_10
 M_plastic2_hospital3_11 M_plastic2_hospital3_12 M_plastic2_hospital3_13
 M_plastic2_hospital3_14 M_plastic2_hospital3_15 M_plastic2_hospital3_16
 M_plastic2_hospital3_17 M_plastic2_hospital3_18 M_plastic2_hospital3_19
 M_plastic2_hospital4_1 M_plastic2_hospital4_2 M_plastic2_hospital4_3
 M_plastic2_hospital4_4 M_plastic2_hospital4_5 M_plastic2_hospital4_6
 M_plastic2_hospital4_7 M_plastic2_hospital4_8 M_plastic2_hospital4_9
 M_plastic2_hospital4_10 M_plastic2_hospital4_11 M_plastic2_hospital4_12
 M_plastic2_hospital4_13 M_plastic2_hospital4_14 M_plastic2_hospital4_15
 M_plastic2_hospital4_16 M_plastic2_hospital4_17 M_plastic2_hospital4_18
 M_plastic2_hospital4_19 M_plastic3_factory1_1 M_plastic3_factory1_2
 M_plastic3_factory1_3 M_plastic3_factory1_4 M_plastic3_factory1_5
 M_plastic3_factory1_6 M_plastic3_factory1_7 M_plastic3_factory1_8
 M_plastic3_factory1_9 M_plastic3_factory1_10 M_plastic3_factory1_11
 M_plastic3_factory1_12 M_plastic3_factory1_13 M_plastic3_factory1_14
 M_plastic3_factory1_15 M_plastic3_factory1_16 M_plastic3_factory1_17
 M_plastic3_factory1_18 M_plastic3_factory1_19 M_plastic3_factory2_1
 M_plastic3_factory2_2 M_plastic3_factory2_3 M_plastic3_factory2_4
 M_plastic3_factory2_5 M_plastic3_factory2_6 M_plastic3_factory2_7
 M_plastic3_factory2_8 M_plastic3_factory2_9 M_plastic3_factory2_10
 M_plastic3_factory2_11 M_plastic3_factory2_12 M_plastic3_factory2_13
 M_plastic3_factory2_14 M_plastic3_factory2_15 M_plastic3_factory2_16
 M_plastic3_factory2_17 M_plastic3_factory2_18 M_plastic3_factory2_19
 M_plastic3_factory3_1 M_plastic3_factory3_2 M_plastic3_factory3_3
 M_plastic3_factory3_4 M_plastic3_factory3_5 M_plastic3_factory3_6
 M_plastic3_factory3_7 M_plastic3_factory3_8 M_plastic3_factory3_9
 M_plastic3_factory3_10 M_plastic3_factory3_11 M_plastic3_factory3_12
 M_plastic3_factory3_13 M_plastic3_factory3_14 M_plastic3_factory3_15
 M_plastic3_factory3_16 M_plastic3_factory3_17 M_plastic3_factory3_18
 M_plastic3_factory3_19 M_plastic3_factory4_1 M_plastic3_factory4_2
 M_plastic3_factory4_3 M_plastic3_factory4_4 M_plastic3_factory4_5
 M_plastic3_factory4_6 M_plastic3_factory4_7 M_plastic3_factory4_8
 M_plastic3_factory4_9 M_plastic3_factory4_10 M_plastic3_factory4_11
 M_plastic3_factory4_12 M_plastic3_factory4_13 M_plastic3_factory4_14
 M_plastic3_factory4_15 M_plastic3_factory4_16 M_plastic3_factory4_17
 M_plastic3_factory4_18 M_plastic3_factory4_19 M_plastic3_DUMMY_RESERVE_1
 M_plastic3_DUMMY_RESERVE_2 M_plastic3_DUMMY_RESERVE_3
 M_plastic3_DUMMY_RESERVE_4 M_plastic3_DUMMY_RESERVE_5
 M_plastic3_DUMMY_RESERVE_6 M_plastic3_DUMMY_RESERVE_7
 M_plastic3_DUMMY_RESERVE_8 M_plastic3_DUMMY_RESERVE_9
 M_plastic3_DUMMY_RESERVE_10 M_plastic3_DUMMY_RESERVE_11
 M_plastic3_DUMMY_RESERVE_12 M_plastic3_DUMMY_RESERVE_13
 M_plastic3_DUMMY_RESERVE_14 M_plastic3_DUMMY_RESERVE_15
 M_plastic3_DUMMY_RESERVE_16 M_plastic3_DUMMY_RESERVE_17
 M_plastic3_DUMMY_RESERVE_18 M_plastic3_DUMMY_RESERVE_19
 M_plastic3_hospital1_1 M_plastic3_hospital1_2 M_plastic3_hospital1_3
 M_plastic3_hospital1_4 M_plastic3_hospital1_5 M_plastic3_hospital1_6
 M_plastic3_hospital1_7 M_plastic3_hospital1_8 M_plastic3_hospital1_9
 M_plastic3_hospital1_10 M_plastic3_hospital1_11 M_plastic3_hospital1_12
 M_plastic3_hospital1_13 M_plastic3_hospital1_14 M_plastic3_hospital1_15
 M_plastic3_hospital1_16 M_plastic3_hospital1_17 M_plastic3_hospital1_18
 M_plastic3_hospital1_19 M_plastic3_hospital2_1 M_plastic3_hospital2_2
 M_plastic3_hospital2_3 M_plastic3_hospital2_4 M_plastic3_hospital2_5
 M_plastic3_hospital2_6 M_plastic3_hospital2_7 M_plastic3_hospital2_8
 M_plastic3_hospital2_9 M_plastic3_hospital2_10 M_plastic3_hospital2_11
 M_plastic3_hospital2_12 M_plastic3_hospital2_13 M_plastic3_hospital2_14
 M_plastic3_hospital2_15 M_plastic3_hospital2_16 M_plastic3_hospital2_17
 M_plastic3_hospital2_18 M_plastic3_hospital2_19 M_plastic3_hospital3_1
 M_plastic3_hospital3_2 M_plastic3_hospital3_3 M_plastic3_hospital3_4
 M_plastic3_hospital3_5 M_plastic3_hospital3_6 M_plastic3_hospital3_7
 M_plastic3_hospital3_8 M_plastic3_hospital3_9 M_plastic3_hospital3_10
 M_plastic3_hospital3_11 M_plastic3_hospital3_12 M_plastic3_hospital3_13
 M_plastic3_hospital3_14 M_plastic3_hospital3_15 M_plastic3_hospital3_16
 M_plastic3_hospital3_17 M_plastic3_hospital3_18 M_plastic3_hospital3_19
 M_plastic3_hospital4_1 M_plastic3_hospital4_2 M_plastic3_hospital4_3
 M_plastic3_hospital4_4 M_plastic3_hospital4_5 M_plastic3_hospital4_6
 M_plastic3_hospital4_7 M_plastic3_hospital4_8 M_plastic3_hospital4_9
 M_plastic3_hospital4_10 M_plastic3_hospital4_11 M_plastic3_hospital4_12
 M_plastic3_hospital4_13 M_plastic3_hospital4_14 M_plastic3_hospital4_15
 M_plastic3_hospital4_16 M_plastic3_hospital4_17 M_plastic3_hospital4_18
 M_plastic3_hospital4_19 M_ppe1_factory1_1 M_ppe1_factory1_2
 M_ppe1_factory1_3 M_ppe1_factory1_4 M_ppe1_factory1_5 M_ppe1_factory1_6
 M_ppe1_factory1_7 M_ppe1_factory1_8 M_ppe1_factory1_9 M_ppe1_factory1_10
 M_ppe1_factory1_11 M_ppe1_factory1_12 M_ppe1_factory1_13
 M_ppe1_factory1_14 M_ppe1_factory1_15 M_ppe1_factory1_16
 M_ppe1_factory1_17 M_ppe1_factory1_18 M_ppe1_factory1_19 M_ppe1_factory2_1
 M_ppe1_factory2_2 M_ppe1_factory2_3 M_ppe1_factory2_4 M_ppe1_factory2_5
 M_ppe1_factory2_6 M_ppe1_factory2_7 M_ppe1_factory2_8 M_ppe1_factory2_9
 M_ppe1_factory2_10 M_ppe1_factory2_11 M_ppe1_factory2_12
 M_ppe1_factory2_13 M_ppe1_factory2_14 M_ppe1_factory2_15
 M_ppe1_factory2_16 M_ppe1_factory2_17 M_ppe1_factory2_18
 M_ppe1_factory2_19 M_ppe1_factory3_1 M_ppe1_factory3_2 M_ppe1_factory3_3
 M_ppe1_factory3_4 M_ppe1_factory3_5 M_ppe1_factory3_6 M_ppe1_factory3_7
 M_ppe1_factory3_8 M_ppe1_factory3_9 M_ppe1_factory3_10 M_ppe1_factory3_11
 M_ppe1_factory3_12 M_ppe1_factory3_13 M_ppe1_factory3_14
 M_ppe1_factory3_15 M_ppe1_factory3_16 M_ppe1_factory3_17
 M_ppe1_factory3_18 M_ppe1_factory3_19 M_ppe1_factory4_1 M_ppe1_factory4_2
 M_ppe1_factory4_3 M_ppe1_factory4_4 M_ppe1_factory4_5 M_ppe1_factory4_6
 M_ppe1_factory4_7 M_ppe1_factory4_8 M_ppe1_factory4_9 M_ppe1_factory4_10
 M_ppe1_factory4_11 M_ppe1_factory4_12 M_ppe1_factory4_13
 M_ppe1_factory4_14 M_ppe1_factory4_15 M_ppe1_factory4_16
 M_ppe1_factory4_17 M_ppe1_factory4_18 M_ppe1_factory4_19
 M_ppe1_DUMMY_RESERVE_1 M_ppe1_DUMMY_RESERVE_2 M_ppe1_DUMMY_RESERVE_3
 M_ppe1_DUMMY_RESERVE_4 M_ppe1_DUMMY_RESERVE_5 M_ppe1_DUMMY_RESERVE_6
 M_ppe1_DUMMY_RESERVE_7 M_ppe1_DUMMY_RESERVE_8 M_ppe1_DUMMY_RESERVE_9
 M_ppe1_DUMMY_RESERVE_10 M_ppe1_DUMMY_RESERVE_11 M_ppe1_DUMMY_RESERVE_12
 M_ppe1_DUMMY_RESERVE_13 M_ppe1_DUMMY_RESERVE_14 M_ppe1_DUMMY_RESERVE_15
 M_ppe1_DUMMY_RESERVE_16 M_ppe1_DUMMY_RESERVE_17 M_ppe1_DUMMY_RESERVE_18
 M_ppe1_DUMMY_RESERVE_19 M_ppe1_hospital1_1 M_ppe1_hospital1_2
 M_ppe1_hospital1_3 M_ppe1_hospital1_4 M_ppe1_hospital1_5
 M_ppe1_hospital1_6 M_ppe1_hospital1_7 M_ppe1_hospital1_8
 M_ppe1_hospital1_9 M_ppe1_hospital1_10 M_ppe1_hospital1_11
 M_ppe1_hospital1_12 M_ppe1_hospital1_13 M_ppe1_hospital1_14
 M_ppe1_hospital1_15 M_ppe1_hospital1_16 M_ppe1_hospital1_17
 M_ppe1_hospital1_18 M_ppe1_hospital1_19 M_ppe1_hospital2_1
 M_ppe1_hospital2_2 M_ppe1_hospital2_3 M_ppe1_hospital2_4
 M_ppe1_hospital2_5 M_ppe1_hospital2_6 M_ppe1_hospital2_7
 M_ppe1_hospital2_8 M_ppe1_hospital2_9 M_ppe1_hospital2_10
 M_ppe1_hospital2_11 M_ppe1_hospital2_12 M_ppe1_hospital2_13
 M_ppe1_hospital2_14 M_ppe1_hospital2_15 M_ppe1_hospital2_16
 M_ppe1_hospital2_17 M_ppe1_hospital2_18 M_ppe1_hospital2_19
 M_ppe1_hospital3_1 M_ppe1_hospital3_2 M_ppe1_hospital3_3
 M_ppe1_hospital3_4 M_ppe1_hospital3_5 M_ppe1_hospital3_6
 M_ppe1_hospital3_7 M_ppe1_hospital3_8 M_ppe1_hospital3_9
 M_ppe1_hospital3_10 M_ppe1_hospital3_11 M_ppe1_hospital3_12
 M_ppe1_hospital3_13 M_ppe1_hospital3_14 M_ppe1_hospital3_15
 M_ppe1_hospital3_16 M_ppe1_hospital3_17 M_ppe1_hospital3_18
 M_ppe1_hospital3_19 M_ppe1_hospital4_1 M_ppe1_hospital4_2
 M_ppe1_hospital4_3 M_ppe1_hospital4_4 M_ppe1_hospital4_5
 M_ppe1_hospital4_6 M_ppe1_hospital4_7 M_ppe1_hospital4_8
 M_ppe1_hospital4_9 M_ppe1_hospital4_10 M_ppe1_hospital4_11
 M_ppe1_hospital4_12 M_ppe1_hospital4_13 M_ppe1_hospital4_14
 M_ppe1_hospital4_15 M_ppe1_hospital4_16 M_ppe1_hospital4_17
 M_ppe1_hospital4_18 M_ppe1_hospital4_19 M_ppe2_factory1_1
 M_ppe2_factory1_2 M_ppe2_factory1_3 M_ppe2_factory1_4 M_ppe2_factory1_5
 M_ppe2_factory1_6 M_ppe2_factory1_7 M_ppe2_factory1_8 M_ppe2_factory1_9
 M_ppe2_factory1_10 M_ppe2_factory1_11 M_ppe2_factory1_12
 M_ppe2_factory1_13 M_ppe2_factory1_14 M_ppe2_factory1_15
 M_ppe2_factory1_16 M_ppe2_factory1_17 M_ppe2_factory1_18
 M_ppe2_factory1_19 M_ppe2_factory2_1 M_ppe2_factory2_2 M_ppe2_factory2_3
 M_ppe2_factory2_4 M_ppe2_factory2_5 M_ppe2_factory2_6 M_ppe2_factory2_7
 M_ppe2_factory2_8 M_ppe2_factory2_9 M_ppe2_factory2_10 M_ppe2_factory2_11
 M_ppe2_factory2_12 M_ppe2_factory2_13 M_ppe2_factory2_14
 M_ppe2_factory2_15 M_ppe2_factory2_16 M_ppe2_factory2_17
 M_ppe2_factory2_18 M_ppe2_factory2_19 M_ppe2_factory3_1 M_ppe2_factory3_2
 M_ppe2_factory3_3 M_ppe2_factory3_4 M_ppe2_factory3_5 M_ppe2_factory3_6
 M_ppe2_factory3_7 M_ppe2_factory3_8 M_ppe2_factory3_9 M_ppe2_factory3_10
 M_ppe2_factory3_11 M_ppe2_factory3_12 M_ppe2_factory3_13
 M_ppe2_factory3_14 M_ppe2_factory3_15 M_ppe2_factory3_16
 M_ppe2_factory3_17 M_ppe2_factory3_18 M_ppe2_factory3_19 M_ppe2_factory4_1
 M_ppe2_factory4_2 M_ppe2_factory4_3 M_ppe2_factory4_4 M_ppe2_factory4_5
 M_ppe2_factory4_6 M_ppe2_factory4_7 M_ppe2_factory4_8 M_ppe2_factory4_9
 M_ppe2_factory4_10 M_ppe2_factory4_11 M_ppe2_factory4_12
 M_ppe2_factory4_13 M_ppe2_factory4_14 M_ppe2_factory4_15
 M_ppe2_factory4_16 M_ppe2_factory4_17 M_ppe2_factory4_18
 M_ppe2_factory4_19 M_ppe2_DUMMY_RESERVE_1 M_ppe2_DUMMY_RESERVE_2
 M_ppe2_DUMMY_RESERVE_3 M_ppe2_DUMMY_RESERVE_4 M_ppe2_DUMMY_RESERVE_5
 M_ppe2_DUMMY_RESERVE_6 M_ppe2_DUMMY_RESERVE_7 M_ppe2_DUMMY_RESERVE_8
 M_ppe2_DUMMY_RESERVE_9 M_ppe2_DUMMY_RESERVE_10 M_ppe2_DUMMY_RESERVE_11
 M_ppe2_DUMMY_RESERVE_12 M_ppe2_DUMMY_RESERVE_13 M_ppe2_DUMMY_RESERVE_14
 M_ppe2_DUMMY_RESERVE_15 M_ppe2_DUMMY_RESERVE_16 M_ppe2_DUMMY_RESERVE_17
 M_ppe2_DUMMY_RESERVE_18 M_ppe2_DUMMY_RESERVE_19 M_ppe2_hospital1_1
 M_ppe2_hospital1_2 M_ppe2_hospital1_3 M_ppe2_hospital1_4
 M_ppe2_hospital1_5 M_ppe2_hospital1_6 M_ppe2_hospital1_7
 M_ppe2_hospital1_8 M_ppe2_hospital1_9 M_ppe2_hospital1_10
 M_ppe2_hospital1_11 M_ppe2_hospital1_12 M_ppe2_hospital1_13
 M_ppe2_hospital1_14 M_ppe2_hospital1_15 M_ppe2_hospital1_16
 M_ppe2_hospital1_17 M_ppe2_hospital1_18 M_ppe2_hospital1_19
 M_ppe2_hospital2_1 M_ppe2_hospital2_2 M_ppe2_hospital2_3
 M_ppe2_hospital2_4 M_ppe2_hospital2_5 M_ppe2_hospital2_6
 M_ppe2_hospital2_7 M_ppe2_hospital2_8 M_ppe2_hospital2_9
 M_ppe2_hospital2_10 M_ppe2_hospital2_11 M_ppe2_hospital2_12
 M_ppe2_hospital2_13 M_ppe2_hospital2_14 M_ppe2_hospital2_15
 M_ppe2_hospital2_16 M_ppe2_hospital2_17 M_ppe2_hospital2_18
 M_ppe2_hospital2_19 M_ppe2_hospital3_1 M_ppe2_hospital3_2
 M_ppe2_hospital3_3 M_ppe2_hospital3_4 M_ppe2_hospital3_5
 M_ppe2_hospital3_6 M_ppe2_hospital3_7 M_ppe2_hospital3_8
 M_ppe2_hospital3_9 M_ppe2_hospital3_10 M_ppe2_hospital3_11
 M_ppe2_hospital3_12 M_ppe2_hospital3_13 M_ppe2_hospital3_14
 M_ppe2_hospital3_15 M_ppe2_hospital3_16 M_ppe2_hospital3_17
 M_ppe2_hospital3_18 M_ppe2_hospital3_19 M_ppe2_hospital4_1
 M_ppe2_hospital4_2 M_ppe2_hospital4_3 M_ppe2_hospital4_4
 M_ppe2_hospital4_5 M_ppe2_hospital4_6 M_ppe2_hospital4_7
 M_ppe2_hospital4_8 M_ppe2_hospital4_9 M_ppe2_hospital4_10
 M_ppe2_hospital4_11 M_ppe2_hospital4_12 M_ppe2_hospital4_13
 M_ppe2_hospital4_14 M_ppe2_hospital4_15 M_ppe2_hospital4_16
 M_ppe2_hospital4_17 M_ppe2_hospital4_18 M_ppe2_hospital4_19
 M_ppe3_factory1_1 M_ppe3_factory1_2 M_ppe3_factory1_3 M_ppe3_factory1_4
 M_ppe3_factory1_5 M_ppe3_factory1_6 M_ppe3_factory1_7 M_ppe3_factory1_8
 M_ppe3_factory1_9 M_ppe3_factory1_10 M_ppe3_factory1_11 M_ppe3_factory1_12
 M_ppe3_factory1_13 M_ppe3_factory1_14 M_ppe3_factory1_15
 M_ppe3_factory1_16 M_ppe3_factory1_17 M_ppe3_factory1_18
 M_ppe3_factory1_19 M_ppe3_factory2_1 M_ppe3_factory2_2 M_ppe3_factory2_3
 M_ppe3_factory2_4 M_ppe3_factory2_5 M_ppe3_factory2_6 M_ppe3_factory2_7
 M_ppe3_factory2_8 M_ppe3_factory2_9 M_ppe3_factory2_10 M_ppe3_factory2_11
 M_ppe3_factory2_12 M_ppe3_factory2_13 M_ppe3_factory2_14
 M_ppe3_factory2_15 M_ppe3_factory2_16 M_ppe3_factory2_17
 M_ppe3_factory2_18 M_ppe3_factory2_19 M_ppe3_factory3_1 M_ppe3_factory3_2
 M_ppe3_factory3_3 M_ppe3_factory3_4 M_ppe3_factory3_5 M_ppe3_factory3_6
 M_ppe3_factory3_7 M_ppe3_factory3_8 M_ppe3_factory3_9 M_ppe3_factory3_10
 M_ppe3_factory3_11 M_ppe3_factory3_12 M_ppe3_factory3_13
 M_ppe3_factory3_14 M_ppe3_factory3_15 M_ppe3_factory3_16
 M_ppe3_factory3_17 M_ppe3_factory3_18 M_ppe3_factory3_19 M_ppe3_factory4_1
 M_ppe3_factory4_2 M_ppe3_factory4_3 M_ppe3_factory4_4 M_ppe3_factory4_5
 M_ppe3_factory4_6 M_ppe3_factory4_7 M_ppe3_factory4_8 M_ppe3_factory4_9
 M_ppe3_factory4_10 M_ppe3_factory4_11 M_ppe3_factory4_12
 M_ppe3_factory4_13 M_ppe3_factory4_14 M_ppe3_factory4_15
 M_ppe3_factory4_16 M_ppe3_factory4_17 M_ppe3_factory4_18
 M_ppe3_factory4_19 M_ppe3_DUMMY_RESERVE_1 M_ppe3_DUMMY_RESERVE_2
 M_ppe3_DUMMY_RESERVE_3 M_ppe3_DUMMY_RESERVE_4 M_ppe3_DUMMY_RESERVE_5
 M_ppe3_DUMMY_RESERVE_6 M_ppe3_DUMMY_RESERVE_7 M_ppe3_DUMMY_RESERVE_8
 M_ppe3_DUMMY_RESERVE_9 M_ppe3_DUMMY_RESERVE_10 M_ppe3_DUMMY_RESERVE_11
 M_ppe3_DUMMY_RESERVE_12 M_ppe3_DUMMY_RESERVE_13 M_ppe3_DUMMY_RESERVE_14
 M_ppe3_DUMMY_RESERVE_15 M_ppe3_DUMMY_RESERVE_16 M_ppe3_DUMMY_RESERVE_17
 M_ppe3_DUMMY_RESERVE_18 M_ppe3_DUMMY_RESERVE_19 M_ppe3_hospital1_1
 M_ppe3_hospital1_2 M_ppe3_hospital1_3 M_ppe3_hospital1_4
 M_ppe3_hospital1_5 M_ppe3_hospital1_6 M_ppe3_hospital1_7
 M_ppe3_hospital1_8 M_ppe3_hospital1_9 M_ppe3_hospital1_10
 M_ppe3_hospital1_11 M_ppe3_hospital1_12 M_ppe3_hospital1_13
 M_ppe3_hospital1_14 M_ppe3_hospital1_15 M_ppe3_hospital1_16
 M_ppe3_hospital1_17 M_ppe3_hospital1_18 M_ppe3_hospital1_19
 M_ppe3_hospital2_1 M_ppe3_hospital2_2 M_ppe3_hospital2_3
 M_ppe3_hospital2_4 M_ppe3_hospital2_5 M_ppe3_hospital2_6
 M_ppe3_hospital2_7 M_ppe3_hospital2_8 M_ppe3_hospital2_9
 M_ppe3_hospital2_10 M_ppe3_hospital2_11 M_ppe3_hospital2_12
 M_ppe3_hospital2_13 M_ppe3_hospital2_14 M_ppe3_hospital2_15
 M_ppe3_hospital2_16 M_ppe3_hospital2_17 M_ppe3_hospital2_18
 M_ppe3_hospital2_19 M_ppe3_hospital3_1 M_ppe3_hospital3_2
 M_ppe3_hospital3_3 M_ppe3_hospital3_4 M_ppe3_hospital3_5
 M_ppe3_hospital3_6 M_ppe3_hospital3_7 M_ppe3_hospital3_8
 M_ppe3_hospital3_9 M_ppe3_hospital3_10 M_ppe3_hospital3_11
 M_ppe3_hospital3_12 M_ppe3_hospital3_13 M_ppe3_hospital3_14
 M_ppe3_hospital3_15 M_ppe3_hospital3_16 M_ppe3_hospital3_17
 M_ppe3_hospital3_18 M_ppe3_hospital3_19 M_ppe3_hospital4_1
 M_ppe3_hospital4_2 M_ppe3_hospital4_3 M_ppe3_hospital4_4
 M_ppe3_hospital4_5 M_ppe3_hospital4_6 M_ppe3_hospital4_7
 M_ppe3_hospital4_8 M_ppe3_hospital4_9 M_ppe3_hospital4_10
 M_ppe3_hospital4_11 M_ppe3_hospital4_12 M_ppe3_hospital4_13
 M_ppe3_hospital4_14 M_ppe3_hospital4_15 M_ppe3_hospital4_16
 M_ppe3_hospital4_17 M_ppe3_hospital4_18 M_ppe3_hospital4_19
 M_respirator1_factory1_1 M_respirator1_factory1_2 M_respirator1_factory1_3
 M_respirator1_factory1_4 M_respirator1_factory1_5 M_respirator1_factory1_6
 M_respirator1_factory1_7 M_respirator1_factory1_8 M_respirator1_factory1_9
 M_respirator1_factory1_10 M_respirator1_factory1_11
 M_respirator1_factory1_12 M_respirator1_factory1_13
 M_respirator1_factory1_14 M_respirator1_factory1_15
 M_respirator1_factory1_16 M_respirator1_factory1_17
 M_respirator1_factory1_18 M_respirator1_factory1_19
 M_respirator1_factory2_1 M_respirator1_factory2_2 M_respirator1_factory2_3
 M_respirator1_factory2_4 M_respirator1_factory2_5 M_respirator1_factory2_6
 M_respirator1_factory2_7 M_respirator1_factory2_8 M_respirator1_factory2_9
 M_respirator1_factory2_10 M_respirator1_factory2_11
 M_respirator1_factory2_12 M_respirator1_factory2_13
 M_respirator1_factory2_14 M_respirator1_factory2_15
 M_respirator1_factory2_16 M_respirator1_factory2_17
 M_respirator1_factory2_18 M_respirator1_factory2_19
 M_respirator1_factory3_1 M_respirator1_factory3_2 M_respirator1_factory3_3
 M_respirator1_factory3_4 M_respirator1_factory3_5 M_respirator1_factory3_6
 M_respirator1_factory3_7 M_respirator1_factory3_8 M_respirator1_factory3_9
 M_respirator1_factory3_10 M_respirator1_factory3_11
 M_respirator1_factory3_12 M_respirator1_factory3_13
 M_respirator1_factory3_14 M_respirator1_factory3_15
 M_respirator1_factory3_16 M_respirator1_factory3_17
 M_respirator1_factory3_18 M_respirator1_factory3_19
 M_respirator1_factory4_1 M_respirator1_factory4_2 M_respirator1_factory4_3
 M_respirator1_factory4_4 M_respirator1_factory4_5 M_respirator1_factory4_6
 M_respirator1_factory4_7 M_respirator1_factory4_8 M_respirator1_factory4_9
 M_respirator1_factory4_10 M_respirator1_factory4_11
 M_respirator1_factory4_12 M_respirator1_factory4_13
 M_respirator1_factory4_14 M_respirator1_factory4_15
 M_respirator1_factory4_16 M_respirator1_factory4_17
 M_respirator1_factory4_18 M_respirator1_factory4_19
 M_respirator1_DUMMY_RESERVE_1 M_respirator1_DUMMY_RESERVE_2
 M_respirator1_DUMMY_RESERVE_3 M_respirator1_DUMMY_RESERVE_4
 M_respirator1_DUMMY_RESERVE_5 M_respirator1_DUMMY_RESERVE_6
 M_respirator1_DUMMY_RESERVE_7 M_respirator1_DUMMY_RESERVE_8
 M_respirator1_DUMMY_RESERVE_9 M_respirator1_DUMMY_RESERVE_10
 M_respirator1_DUMMY_RESERVE_11 M_respirator1_DUMMY_RESERVE_12
 M_respirator1_DUMMY_RESERVE_13 M_respirator1_DUMMY_RESERVE_14
 M_respirator1_DUMMY_RESERVE_15 M_respirator1_DUMMY_RESERVE_16
 M_respirator1_DUMMY_RESERVE_17 M_respirator1_DUMMY_RESERVE_18
 M_respirator1_DUMMY_RESERVE_19 M_respirator1_hospital1_1
 M_respirator1_hospital1_2 M_respirator1_hospital1_3
 M_respirator1_hospital1_4 M_respirator1_hospital1_5
 M_respirator1_hospital1_6 M_respirator1_hospital1_7
 M_respirator1_hospital1_8 M_respirator1_hospital1_9
 M_respirator1_hospital1_10 M_respirator1_hospital1_11
 M_respirator1_hospital1_12 M_respirator1_hospital1_13
 M_respirator1_hospital1_14 M_respirator1_hospital1_15
 M_respirator1_hospital1_16 M_respirator1_hospital1_17
 M_respirator1_hospital1_18 M_respirator1_hospital1_19
 M_respirator1_hospital2_1 M_respirator1_hospital2_2
 M_respirator1_hospital2_3 M_respirator1_hospital2_4
 M_respirator1_hospital2_5 M_respirator1_hospital2_6
 M_respirator1_hospital2_7 M_respirator1_hospital2_8
 M_respirator1_hospital2_9 M_respirator1_hospital2_10
 M_respirator1_hospital2_11 M_respirator1_hospital2_12
 M_respirator1_hospital2_13 M_respirator1_hospital2_14
 M_respirator1_hospital2_15 M_respirator1_hospital2_16
 M_respirator1_hospital2_17 M_respirator1_hospital2_18
 M_respirator1_hospital2_19 M_respirator1_hospital3_1
 M_respirator1_hospital3_2 M_respirator1_hospital3_3
 M_respirator1_hospital3_4 M_respirator1_hospital3_5
 M_respirator1_hospital3_6 M_respirator1_hospital3_7
 M_respirator1_hospital3_8 M_respirator1_hospital3_9
 M_respirator1_hospital3_10 M_respirator1_hospital3_11
 M_respirator1_hospital3_12 M_respirator1_hospital3_13
 M_respirator1_hospital3_14 M_respirator1_hospital3_15
 M_respirator1_hospital3_16 M_respirator1_hospital3_17
 M_respirator1_hospital3_18 M_respirator1_hospital3_19
 M_respirator1_hospital4_1 M_respirator1_hospital4_2
 M_respirator1_hospital4_3 M_respirator1_hospital4_4
 M_respirator1_hospital4_5 M_respirator1_hospital4_6
 M_respirator1_hospital4_7 M_respirator1_hospital4_8
 M_respirator1_hospital4_9 M_respirator1_hospital4_10
 M_respirator1_hospital4_11 M_respirator1_hospital4_12
 M_respirator1_hospital4_13 M_respirator1_hospital4_14
 M_respirator1_hospital4_15 M_respirator1_hospital4_16
 M_respirator1_hospital4_17 M_respirator1_hospital4_18
 M_respirator1_hospital4_19 M_respirator2_factory1_1
 M_respirator2_factory1_2 M_respirator2_factory1_3 M_respirator2_factory1_4
 M_respirator2_factory1_5 M_respirator2_factory1_6 M_respirator2_factory1_7
 M_respirator2_factory1_8 M_respirator2_factory1_9
 M_respirator2_factory1_10 M_respirator2_factory1_11
 M_respirator2_factory1_12 M_respirator2_factory1_13
 M_respirator2_factory1_14 M_respirator2_factory1_15
 M_respirator2_factory1_16 M_respirator2_factory1_17
 M_respirator2_factory1_18 M_respirator2_factory1_19
 M_respirator2_factory2_1 M_respirator2_factory2_2 M_respirator2_factory2_3
 M_respirator2_factory2_4 M_respirator2_factory2_5 M_respirator2_factory2_6
 M_respirator2_factory2_7 M_respirator2_factory2_8 M_respirator2_factory2_9
 M_respirator2_factory2_10 M_respirator2_factory2_11
 M_respirator2_factory2_12 M_respirator2_factory2_13
 M_respirator2_factory2_14 M_respirator2_factory2_15
 M_respirator2_factory2_16 M_respirator2_factory2_17
 M_respirator2_factory2_18 M_respirator2_factory2_19
 M_respirator2_factory3_1 M_respirator2_factory3_2 M_respirator2_factory3_3
 M_respirator2_factory3_4 M_respirator2_factory3_5 M_respirator2_factory3_6
 M_respirator2_factory3_7 M_respirator2_factory3_8 M_respirator2_factory3_9
 M_respirator2_factory3_10 M_respirator2_factory3_11
 M_respirator2_factory3_12 M_respirator2_factory3_13
 M_respirator2_factory3_14 M_respirator2_factory3_15
 M_respirator2_factory3_16 M_respirator2_factory3_17
 M_respirator2_factory3_18 M_respirator2_factory3_19
 M_respirator2_factory4_1 M_respirator2_factory4_2 M_respirator2_factory4_3
 M_respirator2_factory4_4 M_respirator2_factory4_5 M_respirator2_factory4_6
 M_respirator2_factory4_7 M_respirator2_factory4_8 M_respirator2_factory4_9
 M_respirator2_factory4_10 M_respirator2_factory4_11
 M_respirator2_factory4_12 M_respirator2_factory4_13
 M_respirator2_factory4_14 M_respirator2_factory4_15
 M_respirator2_factory4_16 M_respirator2_factory4_17
 M_respirator2_factory4_18 M_respirator2_factory4_19
 M_respirator2_DUMMY_RESERVE_1 M_respirator2_DUMMY_RESERVE_2
 M_respirator2_DUMMY_RESERVE_3 M_respirator2_DUMMY_RESERVE_4
 M_respirator2_DUMMY_RESERVE_5 M_respirator2_DUMMY_RESERVE_6
 M_respirator2_DUMMY_RESERVE_7 M_respirator2_DUMMY_RESERVE_8
 M_respirator2_DUMMY_RESERVE_9 M_respirator2_DUMMY_RESERVE_10
 M_respirator2_DUMMY_RESERVE_11 M_respirator2_DUMMY_RESERVE_12
 M_respirator2_DUMMY_RESERVE_13 M_respirator2_DUMMY_RESERVE_14
 M_respirator2_DUMMY_RESERVE_15 M_respirator2_DUMMY_RESERVE_16
 M_respirator2_DUMMY_RESERVE_17 M_respirator2_DUMMY_RESERVE_18
 M_respirator2_DUMMY_RESERVE_19 M_respirator2_hospital1_1
 M_respirator2_hospital1_2 M_respirator2_hospital1_3
 M_respirator2_hospital1_4 M_respirator2_hospital1_5
 M_respirator2_hospital1_6 M_respirator2_hospital1_7
 M_respirator2_hospital1_8 M_respirator2_hospital1_9
 M_respirator2_hospital1_10 M_respirator2_hospital1_11
 M_respirator2_hospital1_12 M_respirator2_hospital1_13
 M_respirator2_hospital1_14 M_respirator2_hospital1_15
 M_respirator2_hospital1_16 M_respirator2_hospital1_17
 M_respirator2_hospital1_18 M_respirator2_hospital1_19
 M_respirator2_hospital2_1 M_respirator2_hospital2_2
 M_respirator2_hospital2_3 M_respirator2_hospital2_4
 M_respirator2_hospital2_5 M_respirator2_hospital2_6
 M_respirator2_hospital2_7 M_respirator2_hospital2_8
 M_respirator2_hospital2_9 M_respirator2_hospital2_10
 M_respirator2_hospital2_11 M_respirator2_hospital2_12
 M_respirator2_hospital2_13 M_respirator2_hospital2_14
 M_respirator2_hospital2_15 M_respirator2_hospital2_16
 M_respirator2_hospital2_17 M_respirator2_hospital2_18
 M_respirator2_hospital2_19 M_respirator2_hospital3_1
 M_respirator2_hospital3_2 M_respirator2_hospital3_3
 M_respirator2_hospital3_4 M_respirator2_hospital3_5
 M_respirator2_hospital3_6 M_respirator2_hospital3_7
 M_respirator2_hospital3_8 M_respirator2_hospital3_9
 M_respirator2_hospital3_10 M_respirator2_hospital3_11
 M_respirator2_hospital3_12 M_respirator2_hospital3_13
 M_respirator2_hospital3_14 M_respirator2_hospital3_15
 M_respirator2_hospital3_16 M_respirator2_hospital3_17
 M_respirator2_hospital3_18 M_respirator2_hospital3_19
 M_respirator2_hospital4_1 M_respirator2_hospital4_2
 M_respirator2_hospital4_3 M_respirator2_hospital4_4
 M_respirator2_hospital4_5 M_respirator2_hospital4_6
 M_respirator2_hospital4_7 M_respirator2_hospital4_8
 M_respirator2_hospital4_9 M_respirator2_hospital4_10
 M_respirator2_hospital4_11 M_respirator2_hospital4_12
 M_respirator2_hospital4_13 M_respirator2_hospital4_14
 M_respirator2_hospital4_15 M_respirator2_hospital4_16
 M_respirator2_hospital4_17 M_respirator2_hospital4_18
 M_respirator2_hospital4_19 z_metal1_DUMMY_RESERVE->factory1_0
 z_metal2_DUMMY_RESERVE->factory1_0 z_plastic1_DUMMY_RESERVE->factory1_0
 z_plastic2_DUMMY_RESERVE->factory1_0 z_plastic3_DUMMY_RESERVE->factory1_0
 z_ppe1_DUMMY_RESERVE->factory1_0 z_ppe2_DUMMY_RESERVE->factory1_0
 z_ppe3_DUMMY_RESERVE->factory1_0 z_respirator1_DUMMY_RESERVE->factory1_0
 z_respirator2_DUMMY_RESERVE->factory1_0 z_metal1_DUMMY_RESERVE->factory2_0
 z_metal2_DUMMY_RESERVE->factory2_0 z_plastic1_DUMMY_RESERVE->factory2_0
 z_plastic2_DUMMY_RESERVE->factory2_0 z_plastic3_DUMMY_RESERVE->factory2_0
 z_ppe1_DUMMY_RESERVE->factory2_0 z_ppe2_DUMMY_RESERVE->factory2_0
 z_ppe3_DUMMY_RESERVE->factory2_0 z_respirator1_DUMMY_RESERVE->factory2_0
 z_respirator2_DUMMY_RESERVE->factory2_0 z_metal1_DUMMY_RESERVE->factory3_0
 z_metal2_DUMMY_RESERVE->factory3_0 z_plastic1_DUMMY_RESERVE->factory3_0
 z_plastic2_DUMMY_RESERVE->factory3_0 z_plastic3_DUMMY_RESERVE->factory3_0
 z_ppe1_DUMMY_RESERVE->factory3_0 z_ppe2_DUMMY_RESERVE->factory3_0
 z_ppe3_DUMMY_RESERVE->factory3_0 z_respirator1_DUMMY_RESERVE->factory3_0
 z_respirator2_DUMMY_RESERVE->factory3_0 z_metal1_DUMMY_RESERVE->factory4_0
 z_metal2_DUMMY_RESERVE->factory4_0 z_plastic1_DUMMY_RESERVE->factory4_0
 z_plastic2_DUMMY_RESERVE->factory4_0 z_plastic3_DUMMY_RESERVE->factory4_0
 z_ppe1_DUMMY_RESERVE->factory4_0 z_ppe2_DUMMY_RESERVE->factory4_0
 z_ppe3_DUMMY_RESERVE->factory4_0 z_respirator1_DUMMY_RESERVE->factory4_0
 z_respirator2_DUMMY_RESERVE->factory4_0
 z_metal1_DUMMY_RESERVE->hospital1_0 z_metal2_DUMMY_RESERVE->hospital1_0
 z_plastic1_DUMMY_RESERVE->hospital1_0
 z_plastic2_DUMMY_RESERVE->hospital1_0
 z_plastic3_DUMMY_RESERVE->hospital1_0 z_ppe1_DUMMY_RESERVE->hospital1_0
 z_ppe2_DUMMY_RESERVE->hospital1_0 z_ppe3_DUMMY_RESERVE->hospital1_0
 z_respirator1_DUMMY_RESERVE->hospital1_0
 z_respirator2_DUMMY_RESERVE->hospital1_0
 z_metal1_DUMMY_RESERVE->hospital2_0 z_metal2_DUMMY_RESERVE->hospital2_0
 z_plastic1_DUMMY_RESERVE->hospital2_0
 z_plastic2_DUMMY_RESERVE->hospital2_0
 z_plastic3_DUMMY_RESERVE->hospital2_0 z_ppe1_DUMMY_RESERVE->hospital2_0
 z_ppe2_DUMMY_RESERVE->hospital2_0 z_ppe3_DUMMY_RESERVE->hospital2_0
 z_respirator1_DUMMY_RESERVE->hospital2_0
 z_respirator2_DUMMY_RESERVE->hospital2_0
 z_metal1_DUMMY_RESERVE->hospital3_0 z_metal2_DUMMY_RESERVE->hospital3_0
 z_plastic1_DUMMY_RESERVE->hospital3_0
 z_plastic2_DUMMY_RESERVE->hospital3_0
 z_plastic3_DUMMY_RESERVE->hospital3_0 z_ppe1_DUMMY_RESERVE->hospital3_0
 z_ppe2_DUMMY_RESERVE->hospital3_0 z_ppe3_DUMMY_RESERVE->hospital3_0
 z_respirator1_DUMMY_RESERVE->hospital3_0
 z_respirator2_DUMMY_RESERVE->hospital3_0
 z_metal1_DUMMY_RESERVE->hospital4_0 z_metal2_DUMMY_RESERVE->hospital4_0
 z_plastic1_DUMMY_RESERVE->hospital4_0
 z_plastic2_DUMMY_RESERVE->hospital4_0
 z_plastic3_DUMMY_RESERVE->hospital4_0 z_ppe1_DUMMY_RESERVE->hospital4_0
 z_ppe2_DUMMY_RESERVE->hospital4_0 z_ppe3_DUMMY_RESERVE->hospital4_0
 z_respirator1_DUMMY_RESERVE->hospital4_0
 z_respirator2_DUMMY_RESERVE->hospital4_0
End
