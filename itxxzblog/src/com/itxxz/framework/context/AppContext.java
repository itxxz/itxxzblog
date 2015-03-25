package com.itxxz.framework.context;

import com.itxxz.blog.user.entity.User;

public interface AppContext {

	User getUser();

	void setUser(User user);

}
