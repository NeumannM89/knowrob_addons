package org.knowrob.interfaces.mongo.types;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.vecmath.Vector3d;


import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;

public class Designator {

	protected Map<String, Object> values;
	protected String type;

	public Designator() {
		values = new LinkedHashMap<String, Object>();
	}

	public boolean containsKey(Object arg0) {
		return values.containsKey(arg0);
	}

	public Object get(Object arg0) {
		return values.get(arg0);
	}

	public boolean isEmpty() {
		return values.isEmpty();
	}

	public Object put(String arg0, Object arg1) {
		return values.put(arg0, arg1);
	}

	public int size() {
		return values.size();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	/**
	 * Read from a MongoDB result object
	 * 
	 * @param row BasicDBObject, e.g. result of a MongoDB query
	 * @return Instance of Designator with values from row
	 */
	public Designator readFromDBObject(BasicDBObject row) {

		for(String key : row.keySet()) {

			Object val = null;
			
			// Pose properties
			if(key.equalsIgnoreCase("pose")) {
				val = new PoseStamped().readFromDBObject((BasicDBObject) row.get(key));

			// Dimension properties
			} else if(key.equalsIgnoreCase("dimensions")) {
				val = new Vector3d();
				
				if(row.get(key) instanceof BasicDBList) {
					BasicDBList dim = ((BasicDBList) row.get(key));
					if(dim!=null) {
						((Vector3d) val).x = Double.valueOf(dim.get(0).toString());
						((Vector3d) val).y = Double.valueOf(dim.get(1).toString());
						((Vector3d) val).z = Double.valueOf(dim.get(2).toString());
					}
				}
				
			// Designator properties
			} else if(key.equalsIgnoreCase("at") || 
					  key.equalsIgnoreCase("handle") || 
					  key.equalsIgnoreCase("obj")) {
				val = new Designator().readFromDBObject((BasicDBObject) row.get(key));
				
				// Numerical properties
			} else if(key.equalsIgnoreCase("z-offset")) {
				val = row.getDouble(key);

			// String properties
			} else {
				val = row.getString(key);
			}

			if(val!=null)
				values.put(key, val);
		}
		return this;
	}
}