package com.talend.tac.cases.executionTask;

import java.awt.Event;
import org.testng.Assert;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import com.talend.tac.cases.Login;

public class TestGenerateDeployRunStopPauseTaskResumeTask extends Login {
   
	public void generateDeployRunTask(String taskLabel, String buttonXpath) {
		
    	this.clickWaitForElementPresent("!!!menu.executionTasks.element!!!");//into executiontask page
    	selenium.setSpeed(MID_SPEED);
    	Assert.assertTrue(selenium.isElementPresent("//div[text()='"+rb.getString("menu.jobConductor")+"']"));
    	selenium.setSpeed(MIN_SPEED);
    	selenium.mouseDown("//span[text()='"+taskLabel+"']");//select an simple task
    	selenium.click(buttonXpath);//click function button
          	
	}
	
	public void changeCommandLineConfig(String hostAddress) {
		
		this.clickWaitForElementPresent("idMenuConfigElement");//into Configuration page
		this.waitForElementPresent("//div[text()=' Command line/primary (4 Parameters)']", 20);
		selenium.mouseDown("//div[text()=' Command line/primary (4 Parameters)']");
		this.clickWaitForElementPresent("//div[text()=' Command line/primary (4 Parameters)']//ancestor::div[@class='x-grid-group ']" +
				"//div[text()='Host']//ancestor::tr[@role='presentation']//img[@title='Click to edit']");
		this.waitForElementPresent("//div[@class=' x-form-field-wrap  x-component']//input", WAIT_TIME); 
		System.out.println("*--------------*");
		this.typeString("//div[@class=' x-form-field-wrap  x-component']//input",hostAddress);
			
	}
	
	//test deploy a simple task
	@Test(groups={"TestGenerateDeployRun"},dependsOnGroups={"ModifyTask"})
	@Parameters({"modifyTask"})
	public void testGenerateTask(String taskLabel) {
		 
		
		generateDeployRunTask(taskLabel,"idJobConductorTaskGenerateButton()");//click generate button
		this.waitForElementPresent("//span[text()='Generating...']", WAIT_TIME);
	   	Assert.assertTrue(selenium.isElementPresent("//span[text()='Generating...']"));
    	this.waitForElementPresent("//span[text()='Ready to deploy']", WAIT_TIME);
    	Assert.assertTrue(selenium.isElementPresent("//span[text()='Ready to deploy']"));
    	
	}
	
	//test deploy a simple task
	@Test(dependsOnMethods={"testGenerateTask"})
	@Parameters({"modifyTask"})
	public void testDoployTask(String taskLabel) {
		
		generateDeployRunTask(taskLabel,"//button[@id='idJobConductorTaskRunButton()' and text()='Deploy']");//click Deploy button
		this.waitForElementPresent("//span[text()='Ready to run']", WAIT_TIME);
		Assert.assertTrue(selenium.isElementPresent("//span[text()='Ready to run']"));
		selenium.click("//div[@class=' x-nodrag x-tool-close x-tool x-component']");
		
	}
	
	//test run a simple task
	@Test(dependsOnMethods={"testDoployTask"})
	@Parameters({"modifyTask"})
	public void testRunSimpleTask(String taskLabel) {
		 
		generateDeployRunTask(taskLabel,"//button[@id='idJobConductorTaskRunButton()' and text()='Run']");//click Run button
		this.waitForElementPresent("//span[text()='Real time statistics']", WAIT_TIME);
		Assert.assertTrue(selenium.isElementPresent("//span[text()='Real time statistics']"));
		this.waitForElementPresent("//label[text()='Ok']", WAIT_TIME);
		Assert.assertTrue(selenium.isElementPresent("//label[text()='Ok']"));
		selenium.click("//div[@class=' x-nodrag x-tool-close x-tool x-component']");
				
	}
	
	//Run a task with a job containing a subjob
	@Test(dependsOnMethods={"testRunSimpleTask"})
	@Parameters({"labelTRunJobByTaskRun"})
	public void testRunTaskWithJobContainingSubjob(String taskLabel) {
		
		generateDeployRunTask(taskLabel, "//button[@id='idJobConductorTaskRunButton()' and text()='Run']");//click Run button
		this.waitForElementPresent("//span[text()='Real time statistics']", WAIT_TIME);
		Assert.assertTrue(selenium.isElementPresent("//span[text()='Real time statistics']"));
		selenium.setSpeed(MID_SPEED);
	   	Assert.assertTrue(selenium.isTextPresent("Generating..."));
    	selenium.setSpeed(MIN_SPEED);
		this.waitForElementPresent("//label[text()='Ok']", 20);
		Assert.assertTrue(selenium.isElementPresent("//label[text()='Ok']"));
		selenium.click("//div[@class=' x-nodrag x-tool-close x-tool x-component']");
		
	}
	
	//test generating a task using remote CommandLine
	@Test(dependsOnMethods={"testRunSimpleTask"})
	@Parameters({"remotehostAddress", "modifyTask"})
	public void testGenerateTaskUsingRemoteCommandLine(String remotehostAddress, String taskLabel) {
		
		changeCommandLineConfig(remotehostAddress);
		
		generateDeployRunTask(taskLabel,"idJobConductorTaskGenerateButton()");//click generate button
		selenium.setSpeed(MID_SPEED);
	   	Assert.assertTrue(selenium.isTextPresent("Generating..."));
    	selenium.setSpeed(MIN_SPEED);
    	this.waitForElementPresent("//span[text()='Ready to deploy']", WAIT_TIME);
    	Assert.assertTrue(selenium.isElementPresent("//span[text()='Ready to deploy']"));
    	    	    	
	}
	
	//test stop a running task
	@Test(dependsOnMethods={"testGenerateTaskUsingRemoteCommandLine"})
	@Parameters({"remotehostAddress", "modifyTask", "statisticRemoved(regeneration needed, fastest)", "statisticEnabled(regeneration needed)"})
	public void testStopARunningTask(String remotehostAddress, String taskLabel, String statisticRemovedRegeneration, String statisticEnabledReGeneration) {
		
		changeCommandLineConfig(remotehostAddress);
		
		this.clickWaitForElementPresent("!!!menu.executionTasks.element!!!");//into executiontask page
    	selenium.setSpeed(MID_SPEED);
    	Assert.assertTrue(selenium.isElementPresent("//div[text()='"+rb.getString("menu.jobConductor")+"']"));
    	selenium.setSpeed(MIN_SPEED);
    	selenium.mouseDown("//span[text()='"+taskLabel+"']");//select an simple task
    	selenium.click("//label[text()='Statistic:']/parent::div/div/div/div");//statistic
    	selenium.setSpeed(MID_SPEED);
    	
    	if(selenium.isElementPresent("//div[text()='"+statisticRemovedRegeneration+"' and @role='listitem']")) {
    		
    		selenium.mouseDownAt("//div[text()='"+statisticRemovedRegeneration+"' and @role='listitem']",""+Event.ENTER);
    		
    	} else {
    		
    		selenium.mouseDownAt("//div[text()='"+statisticEnabledReGeneration+"' and @role='listitem']",""+Event.ENTER);
    		
    	}
    	
    	selenium.setSpeed(MIN_SPEED);
		selenium.click("idFormSaveButton");
		selenium.click("//button[@id='idJobConductorTaskRunButton()' and text()='Run']");//click Run button
		
		selenium.setSpeed(MID_SPEED);
		selenium.mouseDown("//span[text()='"+taskLabel+"']");//select an simple task
		selenium.setSpeed(MIN_SPEED);
		selenium.chooseOkOnNextConfirmation();		
		selenium.click("//button[text()='Stop']");//click stop button
		selenium.setSpeed(MID_SPEED);
		Assert.assertTrue(selenium.getConfirmation().matches("^Are you sure you want to stop the task " +
				"'"+taskLabel+"' before its normal end [\\s\\S]$"));
		selenium.setSpeed(MIN_SPEED);
		this.waitForElementPresent("//span[text()='"+taskLabel+"']//ancestor::tr[@role='presentation']" +
				"//span[text()='Killed by user']", WAIT_TIME);
		Assert.assertTrue(selenium.isElementPresent("//span[text()='"+taskLabel+"']//ancestor::tr[@role='presentation']" +
				"//span[text()='Killed by user']"));
    	
	}
	
}