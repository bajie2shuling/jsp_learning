package com.wjz.bean;

import java.util.ArrayList;


public class shopCar {
	private ArrayList buyList=new ArrayList();
	
	public ArrayList getBuyList(){
		return buyList;
	}
	/**
	 * 
	 * @���� ���ﳵ�����Ʒ
	 * 
	 */
	public void addItem(goodsSingle single)
	{
		if(single!=null)
		{
			if(buyList.size()==0)
			{					//���buyList�������κ���Ʒ
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
				{		//һ�αȽ��ж��Ƿ��Ѿ�����Ŀǰ��Ҫ��ӵ���Ʒ
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
	 * @���� �ӹ����޸�ָ����Ʒ����
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
	 * @���� ��չ��ﳵ
	 */
	public void clearCar(){
		buyList.clear();
	}
}
