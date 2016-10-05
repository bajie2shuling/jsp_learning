package com.wjz.bean;

import java.util.ArrayList;


public class shopCar {
	private ArrayList buyList=new ArrayList();
	
	public ArrayList getBuyList(){
		return buyList;
	}
	/**
	 * 
	 * @功能 向购物车添加商品
	 * 
	 */
	public void addItem(goodsSingle single)
	{
		if(single!=null)
		{
			if(buyList.size()==0)
			{					//如果buyList不存在任何商品
				goodsSingle temp=new goodsSingle();
				temp.setName(single.getName());
				temp.setPrice(single.getPrice());
				temp.setNum(single.getNum());
				buyList.add(temp);
			}
			else
			{
				int i=0;
				for(;i<buyList.size();i++)
				{		//一次比较判断是否已经存在目前所要添加的商品
					goodsSingle temp=(goodsSingle)buyList.get(i);
					if(temp.getName().equals(single.getName()))
					{
						temp.setNum(temp.getNum()+1);
						break;
					}
				}
				if(i>=buyList.size())
				{
					goodsSingle temp=new goodsSingle();
					temp.setName(single.getName());
					temp.setPrice(single.getPrice());
					temp.setNum(single.getNum());
					buyList.add(temp);
				}
			}
		}
	}
	/**
	 * 
	 * @功能 从购车修改指定商品数量
	 */
	public void removeItem(String name)
	{
		for(int i=0;i<buyList.size();i++)
		{
			goodsSingle temp=(goodsSingle)buyList.get(i);
			if(temp.getName().equals(myTools.toChinese(name)))
			{
				if(temp.getNum()>1){
					temp.setNum(temp.getNum()-1);
					break;
				}
				else if(temp.getNum()==1)
				{
					buyList.remove(i);
				}
			}
		}
	}
	/**
	 * @功能 清空购物车
	 */
	public void clearCar(){
		buyList.clear();
	}
}
