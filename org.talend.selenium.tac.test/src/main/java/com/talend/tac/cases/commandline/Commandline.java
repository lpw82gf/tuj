package com.talend.tac.cases.commandline;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class Commandline {
	protected String server = "localhost";
	protected int port = 8002;

	public Commandline() {
		if(System.getProperty("commandline.server")!=null)
			this.server = System.getProperty("commandline.server");
		
		if(System.getProperty("commandline.port")!=null)
			this.port = Integer.parseInt(System.getProperty("commandline.port"));
	}
	
	public String runCommand(String server, int port, String command) {
		StringBuffer sb = new StringBuffer();
		Socket s;
		try {
			s = new Socket(server, port);
			InputStream is = s.getInputStream();
			OutputStream os = s.getOutputStream();
			
			command = command+"\n";
			os.write(command.getBytes());
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			
			String r = br.readLine();
			sb.append(r);
			while(!"".equals(r) && null!=r && !"\n".equals(r)){
				r = br.readLine();
				sb.append(r + "\n");
				if(r.contains("Copyright (C)") && r.contains("www.talend.com")) {
					r = br.readLine();
					sb.append(r);
					break;
				}
			}
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(sb.toString().trim().replaceAll(" |\\\\|\\+|\\-|[\n\r]|\\'|;|\"|\\|", ""));
		return sb.toString().trim().replaceAll(" |\\\\|\\+|\\-", "").replaceAll("[\n\r]", "").replaceAll("\\'|;|\"|\\|", "" );
	}
}
