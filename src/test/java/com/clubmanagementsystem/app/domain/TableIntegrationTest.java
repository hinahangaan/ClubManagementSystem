package com.clubmanagementsystem.app.domain;
import org.junit.After;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Table.class, transactional = false)
public class TableIntegrationTest {

    @Test
    public void testMarkerMethod() {
    	Item item1 = new Item();
    	item1 = mockItem("SMB", 35.0);
    	
    	Item item2 = new Item();
    	item2 = mockItem("SML", 50.0);
    	
    	ItemOrder io = new ItemOrder();
    	io = mockItemOrder(item1.getPrice());
    	io.setItem(item1);
    	
    	ItemOrder io1 = new ItemOrder();
    	io1 = mockItemOrder(item2.getPrice());
    	io1.setItem(item2);
    	
    	Order order = new Order();
    	order = mockOrder();
    	order.addItemOrder(io1);
    	order.addItemOrder(io);
    	
    	Customer customer = new Customer();
    	customer.addOrder(order);
    	customer.setBill(io.getAmount() + io1.getAmount());

    	Table tbl = new Table();
    	tbl = mockTable();
    	tbl.setCurrentCustomer(customer);
    	

    	/*this.tableRepository.save(tbl);
    	System.out.println(this.tableRepository.findAll());*/
    	
    }
    
    public Item mockItem(String name, Double price){
    	Stock stock = new Stock();
    	stock.setName("San Miguel Beer");
    	
    	Stock stock1 = new Stock();
    	stock1.setName("San Miguel Light");
    	
    	Item item1 = new Item();
    	item1.setPrice(price);
    	item1.setName(name);
    	item1.setStock(stock);
    	item1.setStockDeduction(1.0);
    	
    	return item1;
    	
    }
    
    public ItemOrder mockItemOrder(Double price){
    	ItemOrder iOrder1 = new ItemOrder();
    	iOrder1.setQty(2);
    	iOrder1.setAmount(price * iOrder1.getQty());
    	
    	return iOrder1;
    	
    }
    
    public Order mockOrder(){
    	Waiter waiter = new Waiter();
    	waiter.setName("Ry");
    	
    	Order order1 = new Order();
    	order1.setOrderNumber("0001");
    	order1.setWaiter(waiter);
    	
    	return order1;
    	
    }
    
    public void mockCustomer(){
    	Waiter waiter = new Waiter();
    	waiter.setName("Eli");
    	
    	Customer customer = new Customer();
    	customer.setCustomerNumber(1);
    	customer.setWaiter(waiter);
    	customer.setDiscount(0.0);

    }
    
    public Table mockTable(){
    	Table tbl1 = new Table();
    	tbl1.setName("T-1");
    	
    	return tbl1;
    	
    }
    
	@After
	public void tearDown() throws Exception {
		//this.tableRepository.deleteAll();
	}
}
