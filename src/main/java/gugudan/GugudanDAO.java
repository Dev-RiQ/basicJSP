package gugudan;

import java.util.ArrayList;
import java.util.Random;

public class GugudanDAO {
	private int score;
	private int cnt;
	
	private ArrayList<GugudanVO> list;
	private GugudanDAO(){
		init();
	}
	private static GugudanDAO instance;
	public static GugudanDAO getInstance() {
		if(instance == null) instance = new GugudanDAO();
		return instance;
	}
	private void init() {
		list = new ArrayList<>();
		cnt = 1;
		Random rd = new Random();
		for(int i = 0 ; i < 5 ; i++)
			list.add(new GugudanVO(rd.nextInt(8)+2,rd.nextInt(9)+1));
	}
	public void resetGame() {
		init();
		score = 0;
	}
	public boolean isAnswer(String inputAns) {
		int answer = getNum1(cnt - 1) * getNum2(cnt - 1); 
		if(Integer.parseInt(inputAns) != answer)
			return false;
		score += 20;
		return true;
	}
	public void setCnt() {
		cnt ++;
	}
	public int getScore() {
		return score;
	}
	public int getCnt() {
		return cnt;
	}
	public int getNum1(int round) {
		return list.get(round - 1).getNum1();
	}
	public int getNum2(int round) {
		return list.get(round - 1).getNum2();
	}
}
